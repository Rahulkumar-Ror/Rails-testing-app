Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/edit'
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
