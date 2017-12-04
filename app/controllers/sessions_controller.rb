class SessionsController < ApplicationController

  def new
  end

  def create
    # raise params.inspect
    session[:name] = params[:name]
    if session[:name] == nil || session[:name] == ""
      redirect_to login_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end
end
