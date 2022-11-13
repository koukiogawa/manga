class UsersController < ApplicationController
  def show
     @user = User.find(params[:id])
     @comics=@user.comics.page(params[:page]).reverse_order
  end

  def edit
    @user = User.find(params[:id])
    unless @user.id == current_user.id
       redirect_to comics_path
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
