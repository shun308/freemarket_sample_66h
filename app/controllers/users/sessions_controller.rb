# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :redirect_to_top, only: :new

  # GET /resource/sign_in
  def new
    super
    session[:flag] = "signin" #signinページであることを示す目印
    session[:error] = nil #エラーメッセージの初期化
    alert = nil
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  private
  
  # ログインしている場合、トップページへ戻す
  def redirect_to_top
    redirect_to products_path if user_signed_in?
  end
end