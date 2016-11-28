# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users

  namespace :api do
    namespace :v1 do
      jsonapi_resources :spaces
      jsonapi_resources :teams
      jsonapi_resources :users
    end
  end
end
