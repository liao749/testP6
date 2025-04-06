Rails.application.routes.draw do
  get "static_pages/home"
  resources :users
  resources :trips do
    resources :participants
    resources :expenses
  end
  root "static_pages#home"
end
