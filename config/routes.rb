Rails.application.routes.draw do
  resources :items
  resources :turnips


  resources :items do
    collection {post :import}
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "items#index"

  get 'items/index'

  get 'items/import' => 'itmes#my_import'


end
