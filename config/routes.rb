Rails.application.routes.draw do
  resources :meals

  root to: redirect('/meals/new')
end
