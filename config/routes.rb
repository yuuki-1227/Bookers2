Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' , sessions: 'users/sessions',}
  root to: 'homes#top'
  get 'home/about' => 'homes#about'

  resources :users, only: [:create, :show, :index, :edit, :update]
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
