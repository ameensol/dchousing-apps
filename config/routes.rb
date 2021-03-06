DchousingApps::Application.routes.draw do
  devise_for :users

  resources :applicant
  resources :household_member
  resources :landlord
  resources :salesforce, :only => [:index]

  get "home/index"
  get "/about", to: "home#about"
  post "/download", to: "form_picker#download"
  get "/picker", to: "form_picker#index"

  root to: 'home#index'
end
