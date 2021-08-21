Rails.application.routes.draw do
  get '/shelters', to: 'shelters#index'
  get '/pets', to: 'pets#index'
  get '/veterinarians', to: 'veterinarians#index'
  get '/veterinary_offices', to: 'veterinary_offices#index'
end
