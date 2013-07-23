module AdministratorSessionsHelper
  
  def sign_in(admin)
    self.current_administrator = admin
  end
  
  def current_administrator=(admin)
    @current_administrator = admin
  end
  
  def current_administrator
    @current_administrator
  end
  
  def current_administrator?(admin)
    admin == current_administrator
  end
end
