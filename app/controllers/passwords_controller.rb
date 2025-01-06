class PasswordsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by(email: params[:email])
      PasswordMailer.with(user: @user).reset.deliver_now
    end

    redirect_to new_session_path
  end

  def edit
    @user = User.find_signed!(params[:token], purpose: 'password_reset')
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to new_session_path
  end

  def update
    @user = User.find_signed!(params[:token], purpose: 'password_reset')
    if @user.update(password_params)
      redirect_to new_session_path
    else
      render 'edit'
    end
    rescue ActiveSupport::MessageVerifier::InvalidSignature
      redirect_to new_session_path
    end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
