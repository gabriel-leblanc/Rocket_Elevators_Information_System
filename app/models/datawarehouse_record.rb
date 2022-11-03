class DatawarehouseRecord < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :"datawarehouse_#{Rails.env}"
end
