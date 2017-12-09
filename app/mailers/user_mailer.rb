class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject

  def account_activation(user)
    attachments.inline['caipi.jpg'] = File.read('app/assets/images/caicai.jpg')
    @user = user
    mail to: user.email, subject: "账号激活"
    #url_text = "#{edit_account_activation_url(@user.activation_token, email: @user.email)}"
    #mail(to: @user.email,
         #subject: '账号激活') do |format|
      #format.html { render 'account_activation' }
      #format.text { render plain: url_text }
    #end
  end


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
