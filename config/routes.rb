Rails.application.routes.draw do
  resources :comics do
    resources :comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  devise_for :users
  root to: 'homes#top'
  
end
