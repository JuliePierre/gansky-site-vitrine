Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  # mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'flats#index'

  resources :flats, only: [:index, :show] do
    resources :user_applications, only: [:new, :create, :show]
  end

  get 'conditions-generales-utilisation', to: 'pages#cgu', as: :cgu
end
