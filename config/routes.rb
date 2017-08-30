Rails.application.routes.draw do
  root 'billboard_charts#index'

  resources :billboard_charts
end
