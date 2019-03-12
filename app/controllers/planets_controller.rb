class PlanetsController < ApplicationController

    def index
        @planets = Planet.all
    end

    def new 
        @planet = Planet.new
    end

    def create
        @planet = Planet.create(params_planet)
    end

private

    def params_planet
        params.require(:planet).permits(:name)
    end
    
end
