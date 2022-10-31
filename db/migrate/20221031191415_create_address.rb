class CreateAddress < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address_type
      t.string :status
      t.string :entity
      t.string :number_and_street
      t.integer :suite_apartement
      t.string :city
      t.string :postal_code
      t.string :country
      t.string :notes
    end
  end
end
