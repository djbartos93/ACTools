Rails.application.routes.draw do
  resources :tools
  resources :posters
  resources :photos
  resources :fencings
  resources :rugs
  resources :floors
  resources :wallpapers
  resources :wallmounts
  resources :miscs
  resources :housewares
  resources :turnips
  resources :housewares do
    collection {post :import}
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "housewares#index"

  get 'housewares/index'

  get 'housewares/import' => 'housewares#my_import'


end
