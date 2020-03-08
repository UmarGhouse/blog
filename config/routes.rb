Rails.application.routes.draw do
  resources :podcast_notes
  resources :posts
  get 'posts/archive/:year', to: 'posts#archive', as: 'archive'
  get :search, controller: :search

  root to: 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
