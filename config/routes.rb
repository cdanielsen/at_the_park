Rails.application.routes.draw do

  devise_for :users
  match('/', {via: :get, to: 'homepages#index'})
  match('visits', {via: :post, to: 'visits#create'})
  match('signup', {via: :get, to: 'users#new'})

  resources :parks
  resources :users do
    resources :dogs, except: :index
  end

end
