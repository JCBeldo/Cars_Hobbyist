Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hobbyists', to: 'hobbyists#index'
  get '/car_table_name', to: 'cars#index'
end
