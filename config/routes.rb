Rails.application.routes.draw do
  
  devise_for :users

  devise_scope :user do
    # ログイン・ログアウト
    get    'login',                 to: 'users/sessions#new'
    post   'login',                 to: 'users/sessions#create'
    delete 'logout',                to: 'users/sessions#destroy'
    # 新規登録
    get    'signup',                to: 'users/registrations#index'
    get    'signup/registration',   to: 'users/registrations#new'
  end

  root 'roots#index'

  resources :address except: :show

  resources :products

end
