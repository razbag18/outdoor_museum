class CommentsController < ApplicationController

  def create
    comment = Comment.new
    comment.content = params[:content]
    comment.picture_id = params[:picture_id]
    comment.user_id = current_user.id
    if comment.save
      redirect_to "/pictures/#{ params[:picture_id]}"
    else
      render :index
    end
  end
end
