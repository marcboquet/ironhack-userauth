class SessionsController < ApplicationController
  def new
  end

  def create
    # Check if user with email exists
    user = User.find_by_email(params[:email])
    if user
      if user.authenticate(params[:password])
        render text: "PASSWORD OK"
      else
        render text: "PASSWORD NOT OK"
      end
    else
      render text: "USER NOT FOUND"
    end
  end
end
