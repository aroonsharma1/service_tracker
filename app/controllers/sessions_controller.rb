class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    service_request = ServiceRequest.find_by_service_request_number(params[:session][:service_request_number])
    if service_request && service_request.customer_email == self.params[:session][:email]
      retrieve service_request
      redirect_to service_request
    else
      flash[:error] = 'Invalid email/service request number combination' # Not quite right!
      render 'static_pages/home'
    end
  end
  
  def destroy
  end
end
