Rails.application.routes.draw do
  
  # deviseのuserを作成した際に自動的に記述される
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # 一覧表示のルーティングを設定
  # 一覧表示をルートに設定し直す
  root 'blogs#index'
  # 投稿画面のルーティングを設定
  get 'blogs/new' => 'blogs#new'
  # 投稿を編集するルーティングの設定
  get 'blogs/:id/edit' => 'blogs#edit'
  # 投稿を保存するルーティングを設定
  post 'blogs' => 'blogs#create'
  # 投稿を削除するルーティングを設定
  delete 'blogs/:id' => 'blogs#destroy'
  # 投稿を編集するためのルーティングを設定
  patch 'blogs/:id' => 'blogs#update'
  
end
