Rails.application.routes.draw do

  namespace :api do

    get '/services' => 'services#index'
    get '/services/:id' => 'services#show'
    post '/services' => 'services#create'
    patch '/services/:id' => 'services#update'
    delete '/services/:id' => 'services#destroy'

  end
  
end
