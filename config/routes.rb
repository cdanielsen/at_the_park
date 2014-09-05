Rails.application.routes.draw do

  match('/', {via: :get, to: 'parks#index'})
  match('parks', {via: :get, to: 'parks#index'})

end
