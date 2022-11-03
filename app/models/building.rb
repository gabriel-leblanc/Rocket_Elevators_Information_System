class Building < ApplicationRecord
    has_many :building_detail
    has_many :batteries
    belongs_to :customer
end