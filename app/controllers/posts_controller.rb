class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post_params = params.require(:post).permit(:name,:description,:url)

    post = Post.new(post_params)
    if post.save
      redirect_to posts_path(post)
    end
  end
  # 
  # def destroy
  #
  # end
  #
end
