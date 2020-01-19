Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  root 'signup#registration'
  # root 'products#index'

  #商品周り
  resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  #ユーザー周り
  resources :users, only: [ :new, :show, :edit, :create, :destroy, :update]

  #ログイン単一ページ
  resources :login, only: :index

  #新規登録ページ
  resources :signup do
    collection do
      get 'registration'
      get 'phone'
      get 'address'
      get 'credit'
      get 'done'
    end
  end

end
