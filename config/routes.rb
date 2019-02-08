Rails.application.routes.draw do
  root to: "static#home"
  resources :books
  resources :authors
end
