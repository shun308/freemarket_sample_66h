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

  root 'roots#index'
  
  resources :profiles, only: [:update, :edit]
  resources :adresses, except: [:show, :destroy]
  resources :creditcards, only: [:index, :new] do
    collection do
      post 'pay', to: 'creditcard#pay'
      post 'delete', to: 'creditcard#delete'
    end
  end
  resources :mypages, only: :show
  resources :logout, only: :index
  resources :dones, only: :index
  resources :identifications, only:[:update, :edit]
  resources :products

end
