Rails.application.routes.draw do
  resources :comments
  resources :ideas
  resources :contacts
  get "pages/info"
  root "pages#info"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
