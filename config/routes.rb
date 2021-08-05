require 'sidekiq/web'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => "/sidekiq"
  get "/articles", to: "articles#index"
  get "/reactjs", to: "index#reactjs"
  get "/angular", to: "index#angular"
end
