Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # 一覧表示のルーティングを設定
  get 'blogs' => 'blogs#index'
  # 投稿画面のルーティングを設定
  get 'blogs/new' => 'blogs#new'
  # 投稿を保存するルーティングを設定
  post 'blogs' => 'blogs#create'
  
end
