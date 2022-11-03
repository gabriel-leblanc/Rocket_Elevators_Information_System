class AddBuildingTypeToColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :columns, :building_type, :string
  end
end
