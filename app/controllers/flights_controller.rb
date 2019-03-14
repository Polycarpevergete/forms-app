class FlightsController < ApplicationController
    def index
        @flights = Flight.all
        @flight = Flight.new
        @planet_options = Planet.all.map{ |p| [p.name, p.id] }
        @options = Planet.all.map {|p| p.name}
        @depart = params[:flight][:origin_id] unless params[:flight].nil?
        @arrival = params[:flight][:destination_id] unless params[:flight].nil?
    end

    private

    def params_flight
        params.require(:flight).permit(:origin_id, :destination_id)
    end
end
