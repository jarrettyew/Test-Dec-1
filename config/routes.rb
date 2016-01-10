Rails.application.routes.draw do
  resources :phones
  resources :links
  # resources :links, only: [:show, :new, :create] do
  #   resource :upvote, only: [:create]
  #   resource :downvote, only: [:create]
  # end

  # namespace :api do
  #   namespace :v1 do
  #     resources :links, only: [:index, :create]
  #   end
  # end

  root to: "links#index"
end
