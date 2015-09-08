class CommentsController < ApplicationController
def create
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      flash[:notice] = "Comment was saved."
      redirect_to [@topic, @post, @comment]
    else
      flash[:error] = "There was an error saving the comment. Please try again."      
      render :new
    end
  end
end
