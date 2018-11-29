Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  # patch 'posts/:id', to: 'posts#update'         #Same as adding :update above
end
