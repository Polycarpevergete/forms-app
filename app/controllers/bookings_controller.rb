class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight_id].to_i)
        @seats = params[:seats].to_i
        @seats.times { @booking.passengers.build }
    end

    def create
        @booking = Booking.new(booking_params)
        if @booking.save
           @booking.passengers.each do |p|
            PassengerMailer.thank_you(p).deliver_now
            end
        redirect_to @booking
        else
        @seats = params[:seats].present? ? /(\d)/.match(params[:seats]).captures.first.to_i : 1
        @flight = Flight.find(booking_params[:flight_id].to_i)
        render 'new'
        end
    end

    def show
        @booking = Booking.find(params[:id])
        @flight = @booking.flight
    end


    private

    def booking_params
        params.require(:booking).permit(:flight_id, :passengers_attributes => [:name, :email, :booking_id])
    end
end
