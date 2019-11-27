Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts
  
  # get 'user_posts' => 'posts#user_posts'
  root 'practice#index'

  get 'home' => 'practice#index'
  
  post 'home' => 'practice#index'

  get 'about' => 'practice#about'

  get '/:name' => 'posts#user_posts', as: :user_posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
