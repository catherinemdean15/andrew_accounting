Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/transactions', to: 'actions#index'
  get '/transactions/:id', to: 'actions#show'

end
