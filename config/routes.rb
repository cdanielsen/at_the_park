Rails.application.routes.draw do

  match('/', {via: :get, to: 'parks#index'})
  match('parks', {via: :get, to: 'parks#index'})
  match('parks', {via: :post, to: 'parks#create'})
  match('parks/new', {via: :get, to: 'parks#new'})
  match('parks/:id/edit', {via: :get, to: 'parks#edit'})
  match('parks/:id', {via: :get, to: 'parks#show'})
  match('parks/:id', {via: [:patch, :put], to: 'parks#update'})
  match('parks/:id', {via: :delete, to: 'parks#destroy'})

  match('users', {via: :get, to: 'users#index'})
  match('users', {via: :post, to: 'users#create'})
  match('users/new', {via: :get, to: 'users#new'})
  match('users/:id/edit', {via: :get, to: 'users#edit'})
  match('users/:id', {via: :get, to: 'users#show'})
  match('users/:id', {via: [:patch, :put], to: 'users#update'})


  resources :dogs do
    resources :cats
  end
end
