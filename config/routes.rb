Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  get '/auth/facebook/callback' => 'sessions#create'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end