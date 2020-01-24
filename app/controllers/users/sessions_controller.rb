class Users::SessionsController < Devise::SessionsController
  before_action :redirect_to_top, only: :new

  def new
    super
    session[:flag] = "signin" #signinページであることを示す目印
    session[:error] = nil #エラーメッセージの初期化
    alert = nil
  end

  private
  
  # ログインしている場合、トップページへ戻す
  def redirect_to_top
    redirect_to products_path if user_signed_in?
  end
end