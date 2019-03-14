class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight_id])
        @passengers = params[:seats]
    end

    def create
        @booking = Booking.create(booking_params)
    end


    private

    def booking_params
        params.require(:booking).permit(:flight_id, passenger_attributes: [:name, :email])
    end
end
