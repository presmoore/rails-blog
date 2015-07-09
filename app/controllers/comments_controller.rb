class CommentsController < ApplicationController

  def index

  end

  def create
    @comment = current_user.comments.create(params[:comment])
    redirect_to '/posts'
  end

  def show

  end
end
