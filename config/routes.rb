Rails.application.routes.draw do

  resources :projects
  root to: "projects#index"

  get 'contact' => 'static_pages#contact'
end
