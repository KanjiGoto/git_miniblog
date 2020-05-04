class BlogsController < ApplicationController
  
  # before_actionを使用すると、そのコントローラー内のすべてのアクションが動く前に動くメソッド
  before_action :move_to_index, except: :index
  
  
  def index
    @blogs = Blog.all
  end
  
  def new
  end
  
  # 投稿を保存するcreateアクションを定義
  def create
    Blog.create(text: blog_params[:text], user_id: current_user.id)
  end
  
  # 投稿を削除するdestroyアクションを定義
  def destory
    blog = Blog.find(params[:id])
    if blog.user_id == current_user.id
      blog.destory
    end
  end
  
  
  
  private
  # ストロングパラメータを使って、事前に許可したデータのみが保存されるように定義する
  def blog_params
    params.permit(:text)
  end
  

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
end
