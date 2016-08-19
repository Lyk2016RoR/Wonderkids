class FavoritesController < ApplicationController
  def create
    @favbooks=current_user.favorites.create(params[:user_id])
  end
end
