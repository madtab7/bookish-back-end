Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      resources :books
      resources :shelved_books
      resources :reviews
      resources :friendships
    end
  end
end
