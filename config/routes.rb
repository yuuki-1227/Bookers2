Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'homes#top'
  get 'about' => 'homes#about'

  resources :users, only: [:create, :show, :index]
  resources :books, only: [:create, :index, :show, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
