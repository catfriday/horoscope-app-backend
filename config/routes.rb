Rails.application.routes.draw do
  resources :user_horoscopes
  resources :users
  resources :horoscopes 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
