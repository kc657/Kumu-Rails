class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to post_path(post)
    end
  end

  def show
    post_id = params[:id]
    @post = Post.find_by_id(post_id)
  end

  def edit
    post_id = params[:id]
    @post = Post.find_by_id(post_id)
  end


  def update
    post_id = params[:id]
    post = Post.find_by_id(post_id)
    post.update_attributes(post_params)
    redirect_to posts_path
  end

  def destroy
    post_id = params[:id]
    post = Post.find_by_id(post_id)
    post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:name,:description,:url, :content)
  end

end
