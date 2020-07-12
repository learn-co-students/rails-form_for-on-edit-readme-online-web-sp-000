Rails.application.routes.draw do
  # For
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  
end
