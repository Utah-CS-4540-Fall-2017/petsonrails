Rails.application.routes.draw do
  resources :sitters
  devise_for :users

  get 'home/index', as: 'home'
  get 'home/help', as: 'help_page_for_pet_owners'
  get 'home/about', as: 'about'

  post '/users/register_me', as: 'register_me'

  resources :pets
  resources :animal_types
  resources :animal_subtypes
  resources :owners
  resources :users

  root to: 'home#index'
end
