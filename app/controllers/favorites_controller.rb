class FavoritesController < ApplicationController
    def create
        print params
        if Car.find(params[:favorite][:car_id]) && User.find(params[:favorite][:user_id])
            new_favorite = Favorite.create(favorite_params)
        else 
            new_favorite = favorite_params
        end
        render json: new_favorite.to_json(include: :car, except:[:user_id, :car_id, :created_at, :updated_at])
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
        render json: favorite
    end

    private

    def favorite_params
        params.require(:favorite).permit(:car_id, :user_id)
    end

end
