module SessionsHelper
  def sign_in(user)
    cookies.permanent[:user_id] = user.id
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user = cookies[:user_id] ? User.find(cookies[:user_id]) : nil
  end

  def signed_in?
    !current_user.nil?
  end

end
