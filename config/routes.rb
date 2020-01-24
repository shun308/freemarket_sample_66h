Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # resources :purchase, only: [:index, :done]
  resources :purchase, only: [:show, :done]
  post '/purchase/:id/pay' => 'purchase#pay'
  # post '/purchase/pay' => 'purchase#pay'
  get '/purchase/:id/done' => 'purchase#done'
  
  resources :cards, only: [:new, :show] do
    collection do
      post 'show', to: 'cards#show'
      post 'pay', to: 'cards#pay'
      post 'delete', to: 'cards#delete'
    end
  end
  
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
      get 'done'
    end
  end

end
