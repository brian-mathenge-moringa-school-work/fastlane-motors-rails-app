class SessionsController < ApplicationController

    def create
        user = User.find_by(email: params[:email])
        return head(:forbidden) unless user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user.to_json(include: {favorites: {include: :car, except:[:user_id, :car_id, :created_at, :updated_at]}}, except: [:password_digest, :created_at, :updated_at])
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

end
