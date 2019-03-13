class FlightsController < ApplicationController
    def index
        @flights = Flight.all
        @flight = Flight.new
        @planets = Planet.all
        @planet_options = Planet.all.map{ |p| [p.name, p.id] }
        @duration_options = Flight.all.map{ |f| [f.duration, f.duration] }
        @flight = Flight.new
        @departure_flights = params[:flight][:origin_id]
        @arrival_flights = params[:flight][:destination_id]
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
