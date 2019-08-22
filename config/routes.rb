Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'user' => 'user#index'
  resources :users
  root 'welcome#index'
end
