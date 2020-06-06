Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  devise_scope :user do
    get "check_email_duplicacy", to: "registrations#check_email_duplicacy"
  end

  root "home#index"
  resources :posts
  resources :comments
end
