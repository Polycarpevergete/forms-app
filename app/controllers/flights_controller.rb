class FlightsController < ApplicationController
    def index
        @flights = Flight.all
        @flight = Flight.new
        @planet_options = Planet.all.map{ |p| [p.name, p.id] }
        if params[:flight][:origin_id].empty? && params[:flight][:destination_id].empty?
          @departure_flights = params[:flight][:origin_id]
          @arrival_flights = params[:flight][:destination_id]
        end
    end

    def create
        @flight_search = Flight.create(params_flight)
        redirect_to root_url
    end

    private

    def params_flight
        params.require(:flight).permit(:origin_id, :destination_id)
    end
end
