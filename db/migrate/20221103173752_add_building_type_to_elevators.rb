class AddBuildingTypeToElevators < ActiveRecord::Migration[5.2]
  def change
    add_column :elevators, :building_type, :string
  end
end
