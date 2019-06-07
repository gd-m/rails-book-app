Rails.application.routes.draw do
  resources :reviews
  resources :books
  devise_for :users, :controllers => {registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "sessions#welcome"

  get '/home' , to: "sessions#home" , as: "home"
end
