Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :posts, only: [:index, :show, :new, :create, :edit, :update] #run "$rake routes" to see key/value (pathname/path) pairs and folder paths
  patch 'posts/:id', to: 'posts#update'
end
