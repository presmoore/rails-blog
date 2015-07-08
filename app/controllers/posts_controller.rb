class PostsController < ApplicationController

  def index
  
  end


  def create
    @post = current_user.posts.create(params[:post])
    redirect_to "/posts"
  end

end
