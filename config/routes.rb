Rails.application.routes.draw do
  #get 'urls/index'
  #get 'urls/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "urls#new"
  #get "/urls",to:"urls#signup"
  resources :urls
  get '/:id', to: 'urls#redirect' # do not alter position
end
