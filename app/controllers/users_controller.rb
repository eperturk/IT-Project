class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
      if @user.save
        flash[:notice] = "You are now signed up!"
        flash[:color] = "valid"
      else
        flash[:notice] = "Something went wrong"
        flash[:color] = "invalid"
      end
      render "new"
end
