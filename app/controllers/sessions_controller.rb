

class SessionsController < ApplicationController
  def new
  end


  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:notice] = 'Username or password was incorrect'
      redirect_to login_path
    end
  end


end
