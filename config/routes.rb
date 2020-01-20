Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  # root 'signup#registration'
  root 'products#index'

  #商品周り
  resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  #ユーザー本人情報編集ページ、ログアウト、
  resources :users, only: [:edit, :destroy, :update] do
    collection do
      get 'logout'
    end
  end
  #発送元編集ページ
  resources :address, only: [:update, :edit]
  #詳細ページ、プロフィール編集ページ
  resources :mypages, only: [:show, :edit, :update]

  #ログイン単一ページ
  # resources :login, only: :index

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
