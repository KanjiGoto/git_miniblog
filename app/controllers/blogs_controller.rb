class BlogsController < ApplicationController
  
  
  def index
    @blog = Blog.find(1)
  end
  
end
