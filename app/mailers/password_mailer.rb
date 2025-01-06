class PasswordMailer < ApplicationMailer
  def reset
    @user = params[:user]
  
    @token = @user.signed_id(purpose: 'password_reset', expires_in: 15.minutes)
    
    mail(from: "crazyboysfh3@gmail.com", to: @user.email, subject: 'Reset your password')
  end
end
