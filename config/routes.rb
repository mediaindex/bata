Rails.application.routes.draw do
  resources :articles
resources :films
resources :actors
root 'welcome#index'
match ':controller(/:action(/:id))',:via=> :get
 
end
