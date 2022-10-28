class ComicsController < ApplicationController
  def new
    @comic=Comic.new
  end
  
  def create
   @comic=Comic.new(comic_params)
   @comic.user_id=current_user.id
   @comic.save
   redrect_to comics_path
  end
  
  def index
   @comics=Comic.all
  end

  def show
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
