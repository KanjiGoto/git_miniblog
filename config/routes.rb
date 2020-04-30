Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # 一覧表示のルーティングを設定
  get 'blogs' => 'blogs#index'
  
end
