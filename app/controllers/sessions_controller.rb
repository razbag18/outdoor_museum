class SessionsController < ApplicationController
  
  def new

  end
  
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render :index
    else
      render :new
    end
  end

  def destroy
    session[:email] = nil
    render :index
  end

end
