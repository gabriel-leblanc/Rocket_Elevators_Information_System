class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.string :serial_number
      t.string :model
      t.string :type
      t.string :status
      t.date :date_commissioning
      t.date :date_last_inspection
      t.string :certificate_inspection
      t.string :information
      t.text :notes
    end
  end
end
