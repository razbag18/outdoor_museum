class Api::CommentsController < ApplicationController
  def new_comment
    comment = Comment.new
    comment.picture_id = params[:picture_id]
    comment.user_id = session[:user_id]
    comment.content = params[:content]
    
    comment.save

    render json: {
      comment.content = params[:content]
    }
end
  