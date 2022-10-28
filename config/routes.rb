Rails.application.routes.draw do
  resources :comics, only: [:show, :edit, :update, :index, :create, :new]
  devise_for :users
  root to: 'homes#top'
  
end
