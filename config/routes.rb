Rails.application.routes.draw do
  get 'epicenter/feed'

  get 'epicenter/show_user'

  get 'epicenter/now_following'

  get 'epicenter/unfollow'

  devise_for :users
  resources :comments
  resources :posts
  root 'posts#index'

  get 'user_posts' => 'posts#user_posts', as: :user_posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
