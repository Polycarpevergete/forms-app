class Booking < ApplicationRecord
    belongs_to :passenger
    belongs_to :flights
end
