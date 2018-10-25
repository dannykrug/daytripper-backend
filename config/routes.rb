Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :places, only: [:index, :update, :show]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :update, :show, :create]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :user_places, only: [:index, :update, :show, :create, :destroy]
    end
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
