Rails.application.routes.draw do
  root "home#index"

  get "/customer/new", to: "customer#new", as: :new_customer
  get "/customer/:id", to: "customer#show", as: :customer
end
