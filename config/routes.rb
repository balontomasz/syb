Rails.application.routes.draw do
  root 'application#hello'
  resources :points, only: [:index]
end
