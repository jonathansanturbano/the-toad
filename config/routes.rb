Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to:'pages#home';

  get '/bio', to: 'pages#bio';
  get '/basket', to: 'baskets#show', as: 'basket';
  resources :fanarts, only: [:index]
  resources :blogs, only: [:index, :show]
  resources :books, only: [:index, :show] do
    resources :basket_items, only: [:create]
  end
  resources :events, only: [:index]
  resources :goodies, only: [:index, :show] do
    resources :basket_items, only: [:create]
  end
  get "contact", to: "contacts#new", as: "new_contact"
  post "contacts", to: 'contacts#create', as: "contacts"
  resources :baskets, only: [:create, :show]
  resources :basket_items, only: [:destroy, :update]

  post "/checkout", to: "pages#checkout"
end
