Rails.application.routes.draw do

  get "stores/index" => "stores#index"
  get "stores/confirm" => "stores#confirm"
  get "stores/new" => "stores#new"
  get "stores/:id" => "stores#show"
  post "stores/create" => "stores#create"
  get "stores/:id/edit" => "stores#edit"
  post "stores/:id/update" => "stores#update"
  post "stores/:id/destroy" => "stores#destroy"
  
  get "user_home" => "users#user_home"
  get "user_login" => "users#user_login_form"
  post "user_login" => "users#user_login"
  post "user_logout" => "users#user_logout"
  get "user/:id/user_edit" => "users#user_edit"
  post "user/:id/user_update" => "users#user_update"

  get "owner/index" => "owner#index"
  get "owner/new" => "owner#new"
  get "owner/member_list" => "owner#member_list"
  get "owner/:id" => "owner#show"
  post "owner/create" => "owner#create"
  get "login" => "owner#login_form"
  post "login" => "owner#login"
  post "logout" => "owner#logout"

  resources :home
  root 'home#top' #トップページをhomeコントローラのindexアクションに設定
  # get 'home/top'  #デフォルト
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "list" => "home#list"
  get "search" => "home#search"
  get "hokkaido" => "home#hokkaido"
  get "tohoku" => "home#tohoku"
  get "kanto" => "home#kanto"
  get "chubu" => "home#chubu"
  get "kansai" => "home#kansai"
  get "shikoku" => "home#shikoku"
  get "tyugoku" => "home#tyugoku"
  get "kyushu" => "home#kyushu"
  get "recruit" => "home#recruit"
  get "recruit/free" => "home#free"
  get "recruit/free_edit" => "home#free_edit"
  get "recruit/paid" => "home#paid"
  get "recruit/non_profit" => "home#non_profit"
  get "recruit/terms" => "home#terms"
  get "recruit/privacy_policy" => "home#privacy_policy"
  get "adv" => "home#adv"
  get "recruit_adv" => "home#recruit_adv"
  get "member_inquiry" => "home#member_inquiry"
  get "recruit/send_completely" => "home#send_completely"
  post "recruit/free_create" => "home#free_create"
  post "recruit/paid_create" => "home#paid_create"
  post "recruit/inquiry_create" => "home#inquiry_create"
  post "recruit/non_profit_create" => "home#non_profit_create"
  post "recruit/adv_create" => "home#adv_create"
  post "member_inquiry_create" => "home#member_inquiry_create"

  resources :shops

  resources :posts

  get "comments/:id/user_new" => "comments#user_new"
  resources :comments


end
