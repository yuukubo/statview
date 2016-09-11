Rails.application.routes.draw do

  resources :statuses do 
  	resources :members, only: [:create, :destroy]
  end

  root 'statuses#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
