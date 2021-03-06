class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def sign_in_required
    redirect_to new_user_session_url unless user_signed_in?
  end
end


