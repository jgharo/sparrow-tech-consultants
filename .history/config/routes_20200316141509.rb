Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home
  devise_for :users, :controllers => { registrations: 'registrations'}

  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
