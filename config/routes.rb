Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  resources :atendimentos
  resources :hospitals
  resources :pacientes
  root 'static_pages#home'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
