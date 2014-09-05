Rails.application.routes.draw do

  match('/', {via: :get, to: 'homepages#index'})

end
