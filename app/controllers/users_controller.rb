class UsersController < ApplicationController

    # GET "/users/:id"
    def show
        user = User.find(params[:id])
        render json: user.to_json(include: {favorites: {include: :car, except:[:user_id, :car_id, :created_at, :updated_at]}}, except: [:password_digest, :created_at, :updated_at])
    end


    private

    def user_params
        params.permit(:email, :name, :password, :password_confirmation, :phone)
    end

end
