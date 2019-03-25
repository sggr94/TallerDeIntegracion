Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :peliculas
  resources :personajes
  resources :planetas
  resources :estrellas
  resources :vehiculos
  resources :especies
end
