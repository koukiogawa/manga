class FavoritesController < ApplicationController
  def create
    comic=Comic.find(params[:comic_id])
    favorite=Favorite.new(comic_id: comic.id)
    favorite.user_id=current_user.id
    favorite.save
    redirect_to comic_path(comic.id)
  end
  
  def destroy
    comic=Comic.find(params[:comic_id])
    favorite=Favorite.find_by(comic_id: comic.id)
    favorite.user_id=current_user.id
    favorite.destroy
    redirect_to comic_path(comic.id)
  end
end
