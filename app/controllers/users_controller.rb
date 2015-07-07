class UsersController < ApplicationController
  def create
    @user = User.create(params[:user])
    redirect_to "/"
  end

  def new
    @user = User.new
  end
end
