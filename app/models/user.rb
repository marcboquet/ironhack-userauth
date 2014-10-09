class User < ActiveRecord::Base

  # Tell rails to encrypt the password in
  # password_digest column.
  has_secure_password
  # It also checks password == password_confirmation
  # when saving
  # Also provides the @user.authenticate() method
end
