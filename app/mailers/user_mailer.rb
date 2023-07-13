class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation.subject
  #
  def confirmation(user_application)
    @user = user_application

    # attachments.inline['logo-gansky.png'] = File.read("#{Rails.root}/app/assets/images/logo-gansky.png")

    mail(to: @user.applicant_email, subject: 'Votre dossier de réservation a bien été envoyé à Gansky')
  end
end
