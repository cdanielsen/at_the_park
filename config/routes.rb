Rails.application.routes.draw do

  match('/', {via: :get, to: 'parks#index'})
  match('parks', {via: :get, to: 'parks#index'})
  match('parks/new', {via: :get, to: 'parks#new'})
  match('parks', {via: :post, to: 'parks#create'})
end
