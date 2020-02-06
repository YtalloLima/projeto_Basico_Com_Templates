Rails.application.routes.draw do
  devise_for :admins
  #devise_for :admins, :skip => [:registrations]
  devise_for :members

  get 'backoffice', to: 'backoffice/dashboard#index'
  namespace :site do
    get 'home', to:'home#index'
  end
  namespace :backoffice do
    get 'dashboard', to:'dashboard#index' # quando digitar dashboard, irá para o controle dashboard ação index
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'site/home#index'
end
