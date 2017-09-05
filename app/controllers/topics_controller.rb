class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create(topic_params)
  end

  def show
    @topic = Topic.find_by_id(params[:id])
    render :show
  end

  def edit
    @topic = Topic.find_by_id(params[:id]
  end
def update
  @topic = Topic.find_by_id(params[:id])
  @topic.update_attributes(topic_params)
end

  private

  def topic_params
    params.require(:name, :description)
  end

end
