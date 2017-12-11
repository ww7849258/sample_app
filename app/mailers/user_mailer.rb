class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject

  def account_activation(user)
    #attachments.inline['caipi.jpg'] = File.read('app/assets/images/caicai.jpg')
    @user = user
    #headers 'Content-Transfer-Encoding' => '8bit'
    #mail to: user.email, subject: "账号激活",'Content-Transfer-Encoding' => '7bit'
    mail(to: @user.email,
         subject: '账号激活') do |format|
      format.html(content_transfer_encoding: "7bit") 
      format.text(content_transfer_encoding: "7bit")
    end
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
