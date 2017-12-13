class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  WillPaginate.per_page = 15

  private
    # 确保用户已登录
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "请先登录."
      redirect_to login_url
    end
  end
  
end
