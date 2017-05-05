Rails.application.routes.draw do
  devise_for :users

  get 'pages/landing'

  devise_scope :user do
    root 'pages#landing'
  end  


  resources :clothings
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
