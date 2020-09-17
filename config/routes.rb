Rails.application.routes.draw do
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :books
  end
  post 'signup', to: 'users#create'
end
