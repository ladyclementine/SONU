class ApplicationMailer < ActionMailer::Base
  include SendGrid if Rails.env.production?
  default from: 'from@example.com'
  layout 'mailer'
end
