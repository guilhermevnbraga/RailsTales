class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if params[:user][:password].blank?
      if @user.update(user_params_without_password)
        redirect_to @user
      else
        render :edit, status: :unprocessable_entity
      end
    else
      if @user.update(user_params_with_password)
        redirect_to @user
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def user_params_without_password
    params.require(:user).permit(:name, :email)
  end

  def authenticate_user!
    redirect_to new_session_path unless logged_in?
  end

  def authorize_user!
    redirect_to root_path unless @user == current_user
  end
end