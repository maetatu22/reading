class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/outputs/#{comment.output.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text).merge(user_id: current_user.id, output_id: params[:output_id])
  end
end
