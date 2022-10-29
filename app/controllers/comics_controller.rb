class ComicsController < ApplicationController
  def new
    @comic=Comic.new
  end
  
  def create
   @comic=Comic.new(comic_params)
   @comic.user_id=current_user.id
   @comic.save
   redirect_to comics_path
  end
  
  def index
   @comics=Comic.all
  end

  def show
    @comic=Comic.find(params[:id])
  end
  
  def destroy
     @comic=Comic.find(params[:id])
     @comic.destroy
     redirect_to comics_path
  end

  def edit
  end
  
  def update
  end
  
  private

  def comic_params
    params.require(:comic).permit(:title, :image, :body)
  end
end
