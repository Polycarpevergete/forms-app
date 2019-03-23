class Passenger < ApplicationRecord
    belongs_to :booking

    def send_thank_you_email
        PassengerMailer.thank_you(self).deliver_now
    end
end
