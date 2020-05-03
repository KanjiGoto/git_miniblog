class BlogsController < ApplicationController
  
  
  def index
    @blogs = Blog.all
  end
  
  def new
  end
  
  # 投稿を保存するcreateアクションを定義
  def create
    Blog.create(blog_params)
  end
  
  private
  # ストロングパラメータを使って、事前に許可したデータのみが保存されるように定義する
  def blog_params
    params.permit(:text)
  end
  
end
