Rails.application.routes.draw do
  get 'welcome/index'

  resources :profiles do 
  	resources :comments
  end

  resources :resources_page
  resources :about
  

  root 'welcome#index'
end

