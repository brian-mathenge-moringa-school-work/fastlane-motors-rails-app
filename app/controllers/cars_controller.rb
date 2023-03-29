class CarsController < ApplicationController

    # GET "/cars"
    def index
        cars = Car.all
        render json: cars
    end

    # GET "/cars/:id"
    def show
        car = Car.find_by(id: params[:id])
        if car
            render json: car, status: :ok
        else
            render json: { error: "Car not found" }, status: :not_found
        end
    end

end
