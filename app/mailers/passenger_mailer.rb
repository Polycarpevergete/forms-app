class PassengerMailer < ApplicationMailer

    def thank_you(passenger)
        @passenger = passenger
        mail to: passenger.email, subject "Thank You"
    end


end
