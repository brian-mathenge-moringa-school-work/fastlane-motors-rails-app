class UsersController < ApplicationController

    # GET "/users"
    def index
        users = User.all
        render json: users
    end

    # GET "/users/:id"
    def show
        user = User.find(params[:id])
        render json: user.to_json(include: {favorites: {include: :car, except:[:user_id, :car_id, :created_at, :updated_at]}}, except: [:password_digest, :created_at, :updated_at])
    end

    # POST "/users"
    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: {errors: user.errors}
        end
    end

    # PATCH "/users/:id"
    # def update
    #     user = User.find(params[:id])
    #     return head(:forbidden) unless user.authenticate(params[:password])
    #     user.update(user_params)
    #     render json: user.to_json(include: {favorites: {include: :plant, except:[:user_id, :plant_id, :created_at, :updated_at]}}, except: [:password_digest, :created_at, :updated_at])
    # end


    private

    def user_params
        params.permit(:email, :name, :password, :password_confirmation, :phone)
    end

end
