class WelcomeController < ApplicationController
  def index
    if session[:user_id]
      # If current user is set in the session
      # prepare a variable for the view
      @current_user = User.find(session[:user_id])
    end
  end
end
