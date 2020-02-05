Rails.application.routes.draw do
  namespace :site do
    get 'home/index'
  end
  namespace :backoffice do
    get 'dashboard/index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'site/home#index'
end
