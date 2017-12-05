class SessionsController < ApplicationController
  def new
  end

  def create
    #why the hell is this not working with just if params[:name] then set session[:name] and redirect
    if params[:name] == nil|| params[:name] == ""
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
