class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

  def show
    set_post
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

end
