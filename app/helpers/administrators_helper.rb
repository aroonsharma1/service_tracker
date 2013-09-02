module AdministratorsHelper
  def admin_send_email(service_request,email_case)
   admin = Administrators.find_by_email("collegescootersmd@gmail.com")
   if email_case == 1 #service request created
    Pony.mail(   
        :to => service_request.customer_email, :subject => 'Your Service Request Has Been Created!',       
        :html_body => "
        <p> Hello #{service_request.customer_first_name} #{service_request.customer_last_name}, </p></br>
        <p> Your service request has been created!, Your tracking number is: #{service_request.service_request_number}</p>
        <p> To view the status of your service request at any time, go to this link: </p>
        <p> <a href=https://collegescootersumd.herokuapp.com/>https://collegescootersumd.herokuapp.com/</a></p>
        <p> Then enter your email and the service request number provided in this email. </p>
        <p> Thank you! </p> 
        <p> From: College Scooters Maintenence Team </p> ",
        :via => :smtp, :via_options => {
        :address              => 'smtp.gmail.com',
        :port                 => '587',
        :enable_starttls_auto => true,
        :user_name            => admin.email,
        :password             => admin.email_password, # now people can't look the password up on github
        :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
        :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
      })
    elsif email_case == 2 #forgot the service request number
      Pony.mail(   
          :to => service_request.customer_email, :subject => 'Service Request Number Recovery',       
          :html_body => "
          <p> Hello #{service_request.customer_first_name} #{service_request.customer_last_name},</p></br>
          <p> Your forgotten service request number is #{service_request.service_request_number}.</p>
          <p> To view the status of your service request at any time, go to this link: </p>
          <p> <a href=https://collegescootersumd.herokuapp.com/>https://collegescootersumd.herokuapp.com/</a></p>
          <p> Then enter your email and the service request number provided in this email. </p>
          <p> Thank you! </p> 
          <p> From: College Scooters Maintenence Team </p> ",
          :via => :smtp, :via_options => {
          :address              => 'smtp.gmail.com',
          :port                 => '587',
          :enable_starttls_auto => true,
          :user_name            => admin.email,
          :password             => admin.email_password, # now people can't look the password up on github
          :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
          :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
        }) 
      elsif email_case == 3 #service request is completed
        Pony.mail(   
            :to => service_request.customer_email, :subject => 'Your Service Request is Completed!',       
            :html_body => "
            <p> Hello #{service_request.customer_first_name} #{service_request.customer_last_name},</p></br> 
            <p> Your service request #{service_request.service_request_number} is now completed!</p>
            <p> Your scooter is now ready to be picked up from the shop. </p>
            <p> Thank you and see you soon! </p> 
            <p> From: College Scooters Maintenence Team </p> ",
            :via => :smtp, :via_options => {
            :address              => 'smtp.gmail.com',
            :port                 => '587',
            :enable_starttls_auto => true,
            :user_name            => admin.email,
            :password             => admin.email_password, # now people can't look the password up on github
            :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
            :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
        })
    end
  end
end
