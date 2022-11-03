class Column < ApplicationRecord
    has_many :elevators
    belongs_to :battery
end
