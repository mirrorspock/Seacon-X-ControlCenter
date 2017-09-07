Rails.application.routes.draw do
  resources :activators
  root 'activators#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
