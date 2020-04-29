Rails.application.routes.draw do
  resources :items
  resources :turnips


  resources :items do
    collection {post :import}
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "items#index"

  get 'items/index'

  get 'items/import', to: 'itmes#my_import'
  get '/houseware', to: 'items#houseware'
  get '/wall-mounted', to: 'items#wall_mounted'
  get '/wallpapers', to: 'items#wallpaper'
  get '/floors', to: 'items#floor'
  get '/rugs', to: 'itmes#rug'
  get '/fencing', to: 'items#fencing'
  get '/photos', to: 'items#photo'
  get '/posters', to: 'items#poster'
  get '/tools', to: 'items#tool'
  get '/tops', to: 'items#clothes_top'
  get '/bottoms', to: 'items#clothes_bottom'
  get '/dresses', to: 'items#clothes_dresse'
  get '/headware', to: 'items#headware'
  get '/accessories', to: 'items#accessories'
  get '/socks', to: 'items#sock'
  get '/shoes', to: 'items#shoe'
  get '/bags', to: 'items#bag'
  get '/umbrellas', to: 'items#umbrella'
  get '/music', to: 'items#music'
  get '/artwork', to: 'items#art'

  get '/wall-mounted/:dt', to: 'items#wall_mounted'
end
