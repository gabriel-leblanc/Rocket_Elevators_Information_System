class AddEmployeeToBatteries < ActiveRecord::Migration[5.2]
  def change
    add_reference :batteries, :employee, foreign_key: true
  end
end
