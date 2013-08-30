class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    service_request = ServiceRequest.find_by_service_request_number(params[:session][:service_request_number])
    if service_request  && service_request.customer_email == self.params[:session][:email].downcase
      retrieve service_request
      redirect_to service_request
    else
      flash[:error] = 'Invalid email/service request number combination' # Not quite right!
      redirect_to root_path
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
