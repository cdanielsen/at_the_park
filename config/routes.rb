Rails.application.routes.draw do

  match('/', {via: :get, to: 'parks#index'})
  match('parks', {via: :get, to: 'parks#index'})
  match('parks/new', {via: :get, to: 'parks#new'})
  match('parks', {via: :post, to: 'parks#create'})
  match('parks/:id', {via: :get, to: 'parks#show'})
  match('parks/:id/edit', {via: :get, to: 'parks#edit'})
  match('parks/:id', {via: [:patch, :put], to: 'parks#update'})

end
