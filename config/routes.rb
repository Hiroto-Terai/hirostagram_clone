Rails.application.routes.draw do
  devise_for :users,
    controllers: {registrations:'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'

  get '/users/:id', to:'users#show', as:'user'

  get '/posts/new', to:'posts#new'
  get '/posts', to:'posts#index'
  post '/posts', to:'posts#create'
  post '/posts/:post_id/photos', to:'photos#create', as:'post_photos'

  
end
