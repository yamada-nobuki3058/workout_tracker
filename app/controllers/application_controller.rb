class ApplicationController < ActionController::Base
  # app/controllers/application_controller.rb

  ## ログインしていないユーザーは弾く
  before_action :authenticate_user!

  # Deviseのコントローラーはログイン不要
  skip_before_action :authenticate_user!, if: :devise_controller?

  # nameパラメーターを許可
  before_action :configure_permitted_parameters, if: :devise_controller?

  # ログイン後のリダイレクト
  def after_sign_in_path_for(resource)
    root_path
  end

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
