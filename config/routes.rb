Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only:[:index, :new, :edit, :show, :create]
  patch 'posts/:id', to: 'posts#update'

end
