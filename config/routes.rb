Rails.application.routes.draw do

  devise_for :users
  resources :projects
  root to: "projects#index"

  get 'contact' => 'static_pages#contact'
end
