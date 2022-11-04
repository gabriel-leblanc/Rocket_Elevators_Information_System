class RemoveEmployeesFromBatteries < ActiveRecord::Migration[5.2]
  def change
    remove_reference :batteries, :employees, foreign_key: true
  end
end
