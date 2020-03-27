Rails.application.routes.draw do
  resources :products
  resources :prodstatuses
  resources :prodcategories
  resources :employees
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home
  devise_for :users

  root to: "home#index"

  get 'home', to: 'home#index'
  get 'report', to: 'reports#show'
  get 'transportation', to: 'transportations#show'
  get 'product', to: 'products#index'
  get 'chemical', to: 'chemicals#show'
  get 'employee', to: 'employees#index'
  get 'stlclient', to: 'stlclients#show'
  get 'supporting', to: 'supportingcs#show'
  get 'supplier', to: 'suppliers#show'
end
