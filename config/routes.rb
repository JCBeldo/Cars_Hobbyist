Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hobbyists', to: 'hobbyists#index'
  get '/cars', to: 'cars#index'
  get '/hobbyists/:hobbyist_id/cars', to: 'hobbyists/cars#index'
  get '/hobbyists/:id', to: 'hobbyists#show'
  get '/cars/:id', to: 'cars#show'
end
