class ApplicationMailer < ActionMailer::Base
  default from: ENV['GOOGLE_APP_EMAIL']
  layout "mailer"
end
