Rails.application.routes.draw do

  namespace :api do

    get '/services' => 'services#index'
    get '/services/:id' => 'services#show'
    post '/services' => 'services#create'
    patch '/services/:id' => 'services#update'
    delete '/services/:id' => 'services#destroy'

    get '/reviews' => 'reviews#index'
    get '/reviews/:id' => 'reviews#show'
    post 'reviews' => 'reviews#create'
    patch '/reviews/:id' => 'reviews#update'
    delete '/reviews/:id' => 'reviews#destroy'

  end
  
end
