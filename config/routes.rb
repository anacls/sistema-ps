Rails.application.routes.draw do
  resources :hospitals
  resources :pacientes
  root 'pacientes#index'
end
