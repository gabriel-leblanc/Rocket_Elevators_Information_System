class RemoveCustomerIdFromBuildings < ActiveRecord::Migration[5.2]
  def change
    remove_column :buildings, :customerID, :string
  end
end
