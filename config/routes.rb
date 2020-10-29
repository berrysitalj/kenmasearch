Rails.application.routes.draw do
  
  resources :home
  root 'home#top' #トップページをhomeコントローラのindexアクションに設定
  # get 'home/top'  #デフォルト
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
