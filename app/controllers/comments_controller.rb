class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]
    @comment.save
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
