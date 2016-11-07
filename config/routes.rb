Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'myprofile/myprofile'
  root 'welcome#index'

  post 'myprofile/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
