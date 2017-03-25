Rails.application.routes.draw do
  resources :companies, only: [:index]
  get 'companies/create_company'
  get 'companies/create_fakers'
end

