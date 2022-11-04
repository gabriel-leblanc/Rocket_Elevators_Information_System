class Battery < ApplicationRecord
    has_many :column
    belongs_to :employee
    belongs_to :building
end
