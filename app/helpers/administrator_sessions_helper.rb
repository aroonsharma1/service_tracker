module AdministratorSessionsHelper
  
  def sign_in(admin)
    cookies.permanent[:remember_token] = admin.remember_token
    self.current_administrator = admin
  end
  
  def adminsigned_in?
    !current_administrator.nil?
  end
  
  def current_administrator=(admin)
    @current_administrator = admin
  end
  
  def current_administrator
    @current_administrator ||= Administrators.find_by_remember_token(cookies[:remember_token])
  end

  def current_administrator?(admin)
    admin == current_administrator
  end
  
  def adminsign_out
    self.current_administrator = nil
    cookies.delete(:remember_token)
  end
end
