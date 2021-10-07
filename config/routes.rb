Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#root"

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show] do
      resources :reviews, only: [:index, :update, :destroy]
    end
    resources :reviews, only: [:index]
    resource :session, only: [:create, :destroy, :show]
    resources :celebs, only: [:index, :show]
    resources :movies, only: [:index, :show] do
          resources :reviews, only: [:index, :show, :create]
          collection do
            get :search, to: "movies#search", as: "search"
          end
    end
  end
end
