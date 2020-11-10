class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all
        render json: favorites, except: [:created_at, :updated_at]
    end

    def create
        favorite = Favorite.create(favorite_params)
    end

    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :appetizer_id)
    end
end
