Rails.application.routes.draw do
  resources :taxes
  resources :invstatuses
  resources :product_orders
  resources :service_orders
  resources :notes
  resources :invoices
  resources :transportations
  resources :chemicals
  resources :suppliers
  resources :supplierpaymentinfos
  resources :supporting_companies
  resources :scpaymentinfos
  resources :stlservices
  resources :servstatuses
  resources :servcategories
  resources :stlclients
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products
  resources :prodstatuses
  resources :prodcategories
  resources :employees
  resources :home
  devise_for :users

  root to: "home#index"

  get 'home', to: 'home#index'
  get 'transportation', to: 'transportations#index'
  get 'product', to: 'products#index'
  get 'chemical', to: 'chemicals#index'
  get 'employee', to: 'employees#index'
  get 'stlclient', to: 'stlclients#index'
  get 'supporting', to: 'supporting_companies#index'
  get 'supplier', to: 'suppliers#index'
  get 'invoice', to: 'invoices#index'
  get 'tax', to: 'taxes#index'
  
end
