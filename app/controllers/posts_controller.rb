class PostsController < ApplicationController
  # has_many :users
  # :current_user
  # user = User.find_by_username(params[:username])
  # if user && user.authenticate(params[:password])

  # can you combine both of these separate functions into one that takes an argument?
  # can you move these out into the models file?

  def index
    @posts = Post.order(cached_votes_up: :desc)
  end

  def date_sort
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new
    @current_user = current_user
  end

  def create
    post = Post.new(post_params)
    post[:user_id] = current_user.id
    # post[:topic_id] = params[:id].to_i

    # remove console displays from production code
    puts post.inspect

    if post.save
      redirect_to post_path(post)
    else
      # remove console displays from production code
      puts post.errors.messages
      flash[:notice]=post.errors.messages
      render :new
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
    redirect_to post_path(post_id)
  end

  def destroy
    post_id = params[:id]
    post = Post.find_by_id(post_id)
    post.destroy
    redirect_to posts_path
  end

  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
  end

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)
  end

  def set_topic
    @topic = Topic.find_by_id[:topic_id]
  end

  private

  def post_params
    params.require(:post).permit(:name,:description,:url,:content)
  end

end
