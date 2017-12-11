require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

  def setup
    @user = users(:wuwei)
  end

  test "account_activation" do
    @user.activation_token = User.new_token
    mail = UserMailer.account_activation(@user)
    assert_equal "账号激活", mail.subject
    assert_equal [@user.email], mail.to
    assert_equal ["wuwei@silverlining.com.cn"], mail.from
    assert_match @user.name,               mail.body.encoded
    assert_match @user.activation_token,   mail.body.encoded
    assert_match CGI.escape(@user.email),  mail.body.encoded
  end

  test "password_reset" do
    mail = UserMailer.password_reset
    #assert_equal "Password reset", mail.subject
    #assert_equal ["wuwei215a@126.com"], mail.to
    #assert_equal ["wuwei215a@126.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
