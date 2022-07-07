Rails.application.routes.draw do

  get "authors", to: "publishers#index"
  get "public", action: :index, controller: 'publishers'
  resources :publishers
  namespace :admin do
    resources :articles
  end
  scope 'customer' do
    resources :books
  end
end
