Rails.application.routes.draw do
  get 'welcome/index'

  resources :profiles do 
  	resources :comments
  end

  resources :resources_page
  
  get '/resources_page/math.html.erb', to: 'resources_page#math'
  get '/resources_page/science.html.erb', to: 'resources_page#science'
  get '/resources_page/foreignlanguage.html.erb', to: 'resources_page#foreignlanguage'
  get '/resources_page/english.html.erb', to: 'resources_page#english'
  get '/resources_page/history.html.erb', to: 'resources_page#history'
  get '/resources_page/standardizedtest.html.erb', to: 'resources_page#standardizedtest'

  root 'welcome#index'
end
