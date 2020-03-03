Rails.application.routes.draw do

  namespace :api do
    resources :customers do
      resources :items
    end
  end
end
