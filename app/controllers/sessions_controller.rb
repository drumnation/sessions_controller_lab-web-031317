class SessionsController < ApplicationController

  def create
    if params[:name].blank?
      redirect_to login_path
      # if the text_field is blank or nil
      # redirect_to '/login' where the form is
    else
      session[:name] = params[:name]
      redirect_to root_path
      # else set the session name equal to the text_field name params
      # redirect to root with a personalized greeting and a log out button
    end

  end

  def destroy
    session[:name] = nil
    redirect_to login_path
    # unset session name equal to nil
    # redirect back to root where they will see the form again
  end

end
