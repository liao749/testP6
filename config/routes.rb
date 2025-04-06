Rails.application.routes.draw do
  resources :users
  resources :trips do
    resources :participants
    resources :expenses
  end
  resources :categories
  root "trips#index"
end
