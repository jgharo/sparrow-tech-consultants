Rails.application.routes.draw do
  resources :home
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
