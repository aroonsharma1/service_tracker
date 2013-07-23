class AdministratorSessionsController < ApplicationController
  def new
  end
  
  def create
    admin = Administrators.find_by_email(params[:administrator_session][:email].downcase)
    if admin && admin.authenticate(params[:administrator_session][:password])
      sign_in admin
      redirect_to '/service_requests'
    else
      flash[:error] = 'Invalid administrator email/password combination' # Not quite right!
      redirect_to '/admin'
    end
  end
  
  def destroy
    sign_out
    redirect_to root_url
  end
end
