Rails.application.routes.draw do
  devise_for :users
  get 'pages/landing'

  resources :clothings

  root 'pages#landing'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
