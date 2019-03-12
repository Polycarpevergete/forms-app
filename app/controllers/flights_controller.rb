class FlightsController < ApplicationController
    def index
        @fligths = Flight.all
    end

    def new
        @flight = Flight.new
    end

end
