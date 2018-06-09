Rails.application.routes.draw do
  get 'sessions_hospital/new'

  get 'static_pages/home'

  get 'static_pages/help'
  
  get 'hospitals/index'

  resources :atendimentos
  resources :hospitals
  resources :pacientes
  
  root 'static_pages#home'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get    '/loginhospital',   to: 'sessions_hospital#new'
  post   '/loginhospital',   to: 'sessions_hospital#create'
  delete '/logouthospital',  to: 'sessions_hospital#destroy'
end
