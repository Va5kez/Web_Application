Rails.application.routes.draw do

get "/login" => "sessions#new"
post "/login" => "sessions#create"
delete "/logout" => "sessions#destroy"

  resources :employees do
    resources :contributions do
      resources :deposit_contributions
    end
    resources :savings do
      resources :deposit_savings
    end
  end
  resources :loans do
  resources :payments

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
