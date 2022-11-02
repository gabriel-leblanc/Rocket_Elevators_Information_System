class CreateBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :building_details do |t|
      t.string :key
      t.string :value
    end
  end
end
