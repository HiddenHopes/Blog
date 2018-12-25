Rails.application.routes.draw do
  resources :tags
  resources :posts do
    resources :comments
  end
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end