class ForgotSessionsController < ApplicationController
  
  def new
  end
  
  def create
    service_request = ServiceRequest.find_by_customer_email(params[:forgot_session][:customer_email].downcase)
    if service_request
      flash[:success] = 'An email with your service request has been sent to this address'
      admin_send_email(service_request,2) 
    else
      flash[:error] = 'Sorry this email was not found on record. Did you type it correctly?'
    end
    redirect_to root_path
  end
end
