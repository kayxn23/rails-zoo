Rails.application.routes.draw do
  root "animals#index"

  resources :animals

  get '/notfound', to: 'animals#notfound'

  #rails knows :create is  a post by default

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
