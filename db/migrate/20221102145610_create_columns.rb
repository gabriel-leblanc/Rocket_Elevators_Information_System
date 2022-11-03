class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.string :type 
      t.integer :number_floors_served
      t.string :status
      t.string :information
      t.text :notes      
    end
  end
end
