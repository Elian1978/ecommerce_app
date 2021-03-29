Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  # root 'home#index'
  #1 Autentificar solo para que los administradores modifiquen products y categories
  authenticate :admin do
    resources :products
    resources :categories
  #ACA TERMINA LA AUTENTIFICACION 1
  end  
end
