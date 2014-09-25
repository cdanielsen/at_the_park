Rails.application.routes.draw do

  match('/', {via: :get, to: 'homepages#index'})
  match('visits', {via: :post, to: 'visits#create'})

  resources :parks
  resources :users do
    resources :dogs, except: :index
  end

end
