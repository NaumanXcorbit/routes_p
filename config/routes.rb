Rails.application.routes.draw do
  root "publishers#index"
  get 'こんにちは', to: 'admin/articles#index'
  resources :magazines do
    resources :ads, path_names: {new: 'make', edit: 'change'}
  end
  get "authors", to: "publishers#index"
  get "public", action: :index, controller: 'publishers'
  resources :publishers, except: :destroy do
    collection do
      get :search
    end
    member do
      get :profile
    end
  end
  namespace :admin do
    resources :articles, only: [:index, :show]
  end
  scope 'customer' do
    resources :books, as: 'readable'
  end
end
