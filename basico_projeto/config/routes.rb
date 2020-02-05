Rails.application.routes.draw do
  namespace :backoffice do
    get 'dashboard/index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
