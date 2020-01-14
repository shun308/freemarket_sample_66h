Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  devise_scope :user do
    # ログイン・ログアウト
    get    'login',                 to: 'users/sessions#new'
    post   'login',                 to: 'users/sessions#create'
    delete 'logout',                to: 'users/sessions#destroy'
    # 新規登録
    get    'signup',                to: 'users/registrations#index'
    get    'signup/registration',   to: 'users/registrations#new'
  end
  
  get 'address/index'
  get 'address/create'
  get 'address/new'
  get 'address/edit'
  get 'address/update'

  root 'roots#index'

  resources :address, except: [:show, :destroy]
  resources :profiles, only: [:update, :edit]
  resources :mypages, only: :index
  resources :logout, only: :index

  resources :products

end
