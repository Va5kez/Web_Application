Rails.application.routes.draw do

  resources :employees
  resources :loans
  resources :payments
  resources :contributions
  resources :savings
  resources :deposit_savings
  resources :deposit_contributions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
