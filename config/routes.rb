Rails.application.routes.draw do
  root 'static_pages#home'

  resources :billboard_charts do
    resources :songs
  end

  resources :artists do
    resources :songs
  end

end
