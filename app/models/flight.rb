class Flight < ApplicationRecord
    belongs_to :origin, :class_name => "Planet"
    belongs_to :destination, :class_name => "Planet"
end
