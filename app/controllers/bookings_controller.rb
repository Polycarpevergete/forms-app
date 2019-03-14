class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        @flight 
    end
end
