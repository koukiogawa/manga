class CommentsController < ApplicationController
  def create
     comic=Comic.find(params[:comic_id])
     comment=Comment.new(comment_params)
     comment.user_id=current_user.id
     comment.comic_id = comic.id
     comment.save
     redirect_to comic_path(comic.id)
  
  end
  
  def destroy
   Comment.find_by(id: params[:id]).destroy
   redirect_to comics_path(params[:comic_id])
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
