class User < ActiveRecord::Base
  attr_accessible :email, :password

  #worst security ever!
  def authenticate(pass)
    password == pass
  end

end
