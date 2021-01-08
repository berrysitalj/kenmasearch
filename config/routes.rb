Rails.application.routes.draw do
  resources :home
  root 'home#top' #トップページをhomeコントローラのindexアクションに設定
  # get 'home/top'  #デフォルト
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "list" => "home#list"
  get "details" => "home#details"
  
  get "hokkaido" => "home#hokkaido"
  get "tohoku" => "home#tohoku"
  get "kanto" => "home#kanto"
  get "chubu" => "home#chubu"
  get "kansai" => "home#kansai"
  get "shikoku" => "home#shikoku"
  get "tyugoku" => "home#tyugoku"
  get "kyushu" => "home#kyushu"





  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"






  get "shops/index" => "shops#index"
  get "shops/new" => "shops#new"
  get "shops/:id" => "shops#show"
  post "shops/create" => "shops#create"
  get "shops/:id/edit" => "shops#edit"
  post "shops/:id/update" => "shops#update"
  post "shops/:id/destroy" => "shops#destroy"


end
