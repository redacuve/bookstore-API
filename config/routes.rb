Rails.application.routes.draw do
  scope module: :v2, constraints: ApiVersion.new('v2', true) do
    resources :books, only: :index
  end

  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :books
  end

  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'
end
