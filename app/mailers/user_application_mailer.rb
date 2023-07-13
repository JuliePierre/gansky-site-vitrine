class UserApplicationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_application_mailer.new_application.subject
  #
  def new_application(user_application, flat)
    @user = user_application
    @flat = flat
    mail(to: "leslarrisorange@gmail.com", subject: 'Nouvelle demande de visite', skip_premailer: true)
  end
end
