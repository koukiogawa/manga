class ComicsController < ApplicationController
  def new
    @comic=Comic.new
  end
  
  def create
   @comic=Comic.new(comic_params)
   @comic.user_id=current_user.id
   if @comic.save
    redirect_to comics_path
   else
     render :new
   end 
  end
  
  def index
   @comics=Comic.page(params[:page]).reverse_order
   @user=User.find(current_user.id)
  end

  def show
    @comic=Comic.find(params[:id])
    @comment=Comment.new
  end
  
  def destroy
     @comic=Comic.find(params[:id])
     @comic.destroy
     redirect_to comics_path
  end

  def edit
    @comic=Comic.find(params[:id])
  end
  
  def update
     @comic=Comic.find(params[:id])
     @comic.update(comic_params)
     redirect_to comic_path(@comic.id)
  end
  
  private

  def comic_params
    params.require(:comic).permit(:title, :image, :body)
  end
end
