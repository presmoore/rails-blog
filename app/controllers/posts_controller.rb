class PostsController < ApplicationController

  def index
  
  end

  def create
    @post = current_user.posts.create(params[:post])
    redirect_to "/posts"
  end

  def destroy
    @this_post 
    redirect_to(:back)
  end

end
