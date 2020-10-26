class ApplicationController < ActionController::Base
  # deviseに関するコントローラーの処理の時だけ発動
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end
