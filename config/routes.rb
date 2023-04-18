Rails.application.routes.draw do
  resources :users
  resources :prescriptions do
    resources :daily_medications
  end
  resources :doctors
  resources :nurses
end
