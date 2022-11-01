class BuildingDetail < ActiveRecord::Migration[5.2]
  def change
    create_table :BuildingDetails do |t|
    t.integer :buildingId 
    t.string :key
    t.string :value
    end
  end
end
