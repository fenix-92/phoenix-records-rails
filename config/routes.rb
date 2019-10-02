Rails.application.routes.draw do

  resources :labels
  resources :countries
  resources :media_gradings
  resources :sleeve_gradings
  root 'pages#home'
  get 'admin', to: 'admin#index'
  get 'blog', to: 'articles#index'

  # Admin routes
  get 'admin/artists', to: 'admin#artists'
  get 'admin/records', to: 'admin#records'
  get 'admin/users', to: 'admin#users'
  get 'admin/settings', to: 'admin#settings'
  get 'admin/grading', to: 'admin#grading'
  get 'admin/countries', to: 'admin#country'
  get 'admin/articles', to: 'admin#articles'

  resources :posts, :artists, :labels, :formats, :articles, :sleeve_gradings, :media_gradings

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
