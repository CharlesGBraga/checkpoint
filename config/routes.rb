Rails.application.routes.draw do
  devise_for :users
  resources :appointments
  resources :dashboard
  root to: 'dashboard#index'

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
