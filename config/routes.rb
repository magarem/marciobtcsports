Rails.application.routes.draw do
  get 'welcome/homepage'
  get 'welcome/about'
  get 'welcome/players'
  get 'welcome/midium'
  get 'welcome/contact'

  root 'welcome#homepage'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
