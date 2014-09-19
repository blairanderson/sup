Rails.application.routes.draw do
  resources :meals
  resources :meal_items
  resources :symptoms

  root to: redirect('/meals/new')
end
