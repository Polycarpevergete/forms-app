class Booking < ApplicationRecord
    has_many :passengers
    belongs_to :flights 

    accepts_nested_attributes_for :passengers
end
