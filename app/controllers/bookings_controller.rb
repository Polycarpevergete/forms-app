class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight_id].to_i)
        @seats = params[:seats].to_i
        @seats.times { @booking.passengers.build }
    end

    def create
        @booking = Booking.create(booking_params)
        @seats = params[:seats].present? ? /(\d)/.match(params[:seats]).captures.first.to_i : 1
        @flight = Flight.find(booking_params[:flight_id].to_i)
        render 'new'
    end

    def show
    end


    private

    def booking_params
        params.require(:booking).permit(:flight_id, :passengers_attributes => [:name, :email, :booking_id])
    end
end
