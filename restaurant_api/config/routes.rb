Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      
      resources :samples
      resources :restaurants
      resources :locations
      resources :priceranges
      resources :categories
  
    end
  end
end
