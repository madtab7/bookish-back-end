Rails.application.routes.draw do
  resources :reviews
  resources :shelved_books
  namespace :api do
    namespace :v1 do
      resources :users
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      resources :books
      resources :shelved_books
      resources :friendships
    end
  end
end
