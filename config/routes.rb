Rails.application.routes.draw do

  root 'pages#home'
  get 'admin', to: 'admin#index'

  resources :posts, :artists, :labels, :formats

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
