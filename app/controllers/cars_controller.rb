class CarsController < ApplicationController

    # GET "/cars"
    def index
        cars = Car.all
        render json: cars
    end

end
