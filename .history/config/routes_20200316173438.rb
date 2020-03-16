Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home
  devise_for :users

  root to: "home#index"

  get 'transportation', to: 'transportations#show'
  get 'product', to: 'products#show'
  get 'chemical', to: 'chemicals#show'
  get 'emploee', to: 'employees#show'
  get 'client', to: 'stlclients#show'
  get 'supporting', to: 'supportingcs#show'
  get 'supplier', to: 'suppliers#show'
end
