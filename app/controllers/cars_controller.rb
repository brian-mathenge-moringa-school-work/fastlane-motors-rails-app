class CarsController < ApplicationController

    # GET "/cars"
    def index
        cars = Car.all
        render json: cars
    end

    # GET "/cars/:id"
    def show
        car = Car.find(params[:id])
        render json: car
    end

end
