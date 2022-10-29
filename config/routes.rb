Rails.application.routes.draw do
  resources :comics
  devise_for :users
  root to: 'homes#top'
  
end
