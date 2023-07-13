class UserMailerPreview < ActionMailer::Preview
  def confirmation
    user_application = UserApplication.first
    UserMailer.confirmation(user_application)
  end
end
