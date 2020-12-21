Rails.application.routes.draw do
  resources :items, only: %i[index create destroy]
  
  resources :lists, only: %i[index create destroy] do
    resources :items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
