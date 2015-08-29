class PostsummariesController < ApplicationController
  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @postsummary = Postsummary.new
  end

  def show
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @postsummary = Postsummary.find(params[:id])
  end


  def create
    @postsummary = Postsummary.new(params.require(:postsummary).permit(:curtpost))
    if @postsummary.save
      redirect_to action: "show", id: Postsummary.last, notice: "Summary was saved successfully."
    else
      flash[:error] = "Error creating summary. Please try again."
      render :new  
    end
  end

end
