class AddEmployeesRefToBatteries < ActiveRecord::Migration[5.2]
  def change
    add_reference :batteries, :employees, foreign_key: true
  end
end
