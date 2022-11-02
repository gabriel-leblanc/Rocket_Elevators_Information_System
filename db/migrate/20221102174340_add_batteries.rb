class AddBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.string :type_of_building
      t.string :status
      t.date :date_of_commissioning
      t.date :date_of_last_inspection
      t.text :certificate_of_operations
      t.string :information
      t.string :notes
    end
  end
end
