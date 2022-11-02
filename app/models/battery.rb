class Battery < ApplicationRecord
    has_many :column
    has_one :employee
    has_one :building
end
