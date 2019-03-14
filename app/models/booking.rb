class Booking < ApplicationRecord
    has_many :passenger
    belongs_to :flights 
end
