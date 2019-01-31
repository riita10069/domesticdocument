Rails.application.routes.draw do
  root 'static_pages#top'
  get '/login', to:'login#login'
  get '/document', to:'document#index'  
  get '/document/create', to: 'document#create'
  get '/dashboard/list/(:name)', to:'dashboard#list'
  get '/form/edit/(:id)', to:'form#edit'
  post '/document/validation', to:'document#validation'
  post '/form/save', to:'form#save'
  post '/form/update/(:id)', to:'form#update'
  post '/login/sign_in', to:'login#sign_in'
  delete '/form/destroy/(:id)', to:'form#destroy'
end
