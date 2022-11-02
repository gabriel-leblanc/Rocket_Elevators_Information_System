class Employee < ApplicationRecord
    belongs_to :user  #, optional: true
    has_many :batteries
end
