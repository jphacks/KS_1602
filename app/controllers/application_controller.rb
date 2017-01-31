class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
      wants_path
  end

private
  def sign_in_required
      redirect_to new_user_session_url unless user_signed_in?
  end

end
