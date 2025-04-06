Rails.application.routes.draw do
  devise_for :users
  resources :trips do
    resources :participants
    resources :expenses
  end
  root "trips#index"
  
end
