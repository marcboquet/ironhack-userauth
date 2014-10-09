class User < ActiveRecord::Base

  # Tell rails to encrypt the password in
  # password_digest column
  has_secure_password

end
