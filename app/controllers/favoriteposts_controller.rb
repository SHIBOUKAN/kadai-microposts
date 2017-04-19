class FavoritepostsController < ApplicationController
    before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:favorite_post_id])
    current_user.favorite(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to :back 
  end

  def destroy
    micropost = Micropost.find(params[:favorite_post_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'お気に入りに解除しました。'
    redirect_to :back 
  end
end