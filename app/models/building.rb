class Building < ApplicationRecord
    has_many :building_detail
    has_many :batteries
end