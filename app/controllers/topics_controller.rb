class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
    @current_user = current_user
  end

  def create
    topic = Topic.new(topic_params)
    # topic[:user_id] = current_user.id <-- this line causing
                                              # errors?
    puts topic.inspect

    if topic.save
      redirect_to topic_path(topic)
    else
      puts topic.errors.messages
      flash[:notice]=post.errors.messages
      render :new
    end
  end

  def show
    topic_id = params[:id]
    @topic = Topic.find_by_id(params[:id])
    render :show
  end

  # def edit
  #   topic_id = params[:id]
  #   @topic = Topic.find_by_id(params[:id]
  # end
  def destroy
    topic_id = params[:id]
    topic = Topic.find_by_id(topic_id)
    topic.destroy
    redirect_to topics_path
  end

def update
  @topic = Topic.find_by_id(params[:id])
  @topic.update_attributes(topic_params)
  topic.update_attributes(topic_params)
  redirect_to_topic_path(topic_id)
end

  private

  def topic_params
    params.require(:topic).permit(:name, :description)
  end

end
