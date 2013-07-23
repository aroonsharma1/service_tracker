module SessionsHelper
  
  def retrieve(service_request)
    
    cookies.permanent[:remember_token] = service_request.remember_token
    self.current_service_request = service_request
  end
  
  def retrieved?
    !current_service_request.nil?
  end
  
  def current_service_request=(service_request)
    @current_service_request = service_request
  end
  
  def current_service_request
    @current_service_request ||= ServiceRequest.find_by_remember_token(cookies[:remember_token])
  end
  
  def current_service_request?(service_request)
    service_request == current_service_request
  end
  
  def sign_out
    self.current_service_request = nil
    cookies.delete(:remember_token)
  end
end
