class FlightsController < ApplicationController
    def index
        @flights = Flight.all
    end

    def new
        @planets = Planet.all
        @planet_options = Planet.all.map{ |p| [p.name, p.id] }
        @duration_options = Flight.all.map{ |f| [f.duration, f.duration] }
        @flight = Flight.new
    end

    def create
        @flight = Flight.create(params_flight)
        redirect_to root_url
    end

    private 
    def params_flight
      params.require(:flight).permit(:origin_id, :destination_id, :duration)
    end
end
