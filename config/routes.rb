Lifecam::Application.routes.draw do
  resources :roles

  devise_for :models

  devise_for :users

 
  resources :pages

  root :to => 'models#index'
  resources :models 
   resources :messages

end