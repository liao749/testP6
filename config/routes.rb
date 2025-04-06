Rails.application.routes.draw do
  resources :users
  resources :trips do
    resources :participants
    resources :expenses
  end
  root "trips#index"
end
