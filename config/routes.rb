Rails.application.routes.draw do

    resources :posts
    patch 'posts/:id', to: 'posts#update'

end
