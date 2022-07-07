Rails.application.routes.draw do
  get "authors", to: "publishers#index"
  get "public", action: :index, controller: 'publishers'
  resources :publishers, :books
end
