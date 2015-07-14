class PostsController < ApplicationController

  def index
  
  end

  def create
    @post = current_user.posts.create(params[:post])
    redirect_to(:back)
  end

  def destroy
    @this_post = Post.find params[:id]
    @this_post.destroy 
    redirect_to(:back)
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    @post.update params[:post]
    redirect_to posts_path
  end

end
