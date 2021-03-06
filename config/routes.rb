Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create] do
    member do
      get :followings
      get :followers
      get :favoritenows # favoritepostsの左部結合部のmicroposts
      get :post_users # favoritepostsの左部結合部のmicropostsから参照したusers
    end
  end

  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  # 投稿のお気に入り機能
  resources :favoriteposts, only: [:create, :destroy]
end