Rails.application.routes.draw do
  resources :books
  post 'signup', to: 'users#create'
end
