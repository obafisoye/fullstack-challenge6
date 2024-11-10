Rails.application.routes.draw do
  root "customers#index"

  resources :customers do
    get :alphabetized, on: :collection
    get :missing_email, on: :collection
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
