class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  WillPaginate.per_page = 20
end
