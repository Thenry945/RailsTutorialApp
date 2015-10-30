class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:sessions][:password])
      #login in User
    else
      flash.now[:danger] = "Invalid email/password combination"
      render 'new'
  end
  def destroy
  end
