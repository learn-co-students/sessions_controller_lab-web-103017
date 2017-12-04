class SessionsController < ApplicationController

  def new #get
  end

  def create #post
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to "/login"
    else
      redirect_to "/"
    end
  end

  def destroy #/logout
    session.delete :name
    redirect_to "/"
  end
end
