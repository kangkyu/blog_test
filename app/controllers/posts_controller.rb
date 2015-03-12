class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def create
    @post = Post.new(params.require(:post).permit(:title, :body))
    @post.save
    redirect_to post_url(@post)
  end
  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit(:title, :body))
    redirect_to post_url(@post)
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end
end
