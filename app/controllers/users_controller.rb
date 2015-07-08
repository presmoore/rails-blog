class UsersController < ApplicationController
  def create
    @user = User.create(params[:user])
    redirect_to "/profile"
  end

  def new
    @user = User.new
  end

  def show
    if params[:id]
      @user = User.find(params[:id])
    else
      redirect_to users_path unless current_user.present?
      @user = current_user
    end
  end

  def index
    # session[:user_id] = nil

  end
  

  def edit

  end

  def update
    current_user.update(params[:user])
    redirect_to "/profile"
  end

  def destroy
    current_user.destroy
    session[:user_id] = nil
    redirect_to '/login_signup'
  end

end
