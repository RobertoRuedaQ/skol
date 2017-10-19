Rails.application.routes.draw do
  resources :schools
  resources :searches

  root to: "searches#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
