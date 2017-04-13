class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    unless session[:name]
      redirect_to login_path
    end
    # don't say hello unless they are logged in
    # redirect to the login path so they can login
    # otherwise it will send to it's view -> That says hello!
  end

end
