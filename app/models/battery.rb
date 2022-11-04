class Battery < ApplicationRecord
    has_many :columns
    belongs_to :employee
    belongs_to :building
end
