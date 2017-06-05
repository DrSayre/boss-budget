Rails.application.routes.draw do
  jsonapi_resources :sources
  jsonapi_resources :users
  jsonapi_resources :funds
  post 'token' => 'sessions#create'
end
