Rails.application.routes.draw do
  root to: redirect('/helloworld')

  post '/helloworld/new', to: 'helloworld#create'
  get '/helloworld/new', to: 'helloworld#new', as: :new
  get '/helloworld', to: 'helloworld#index'


end
