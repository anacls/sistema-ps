Rails.application.routes.draw do
  resources :atendimentos
  resources :hospitals
  resources :pacientes
  root 'pacientes#index'
end
