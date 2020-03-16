Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home
  devise_for :users

  root to: "home#index"

  get 'transportation', to: 'transportations'
  get 'product', to: 'productss'
  get 'chemical', to: 'chemicals'
  get 'emploee', to: 'employees'
  get 'client', to: 'stlclients'
  get 'supporting', to: 'supportingcs'
  get 'supplier', to: 'suppliers'
end
