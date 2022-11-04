class Building < ApplicationRecord
    has_many :building_details
    has_many :batteries
    belongs_to :customer
end