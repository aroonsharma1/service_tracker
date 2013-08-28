module AdministratorsHelper
  def admin_send_email(email,request_number)
   admin = Administrators.find_by_email("collegescootersmd@gmail.com")
    Pony.mail(   
        :to => email, :subject => 'Test Email From Our Service Tracker!!',       
        :html_body => "
        <p> Hello, your service request has been created!, Your tracking number is: #{request_number}</p>
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
  end
end
