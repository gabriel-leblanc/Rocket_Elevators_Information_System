class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :name_company
      t.string :email_company
      t.string :building_type
      t.string :number_apartments
      t.string :number_floors_residential
      t.string :number_basements_residential
      t.string :number_distinct_businesses_commercial
      t.string :number_floors_commercial
      t.string :number_basements_commercial
      t.string :number_parking_commercial
      t.string :number_elevators
      t.string :number_separate_companies
      t.string :number_floors_corporate
      t.string :number_basements_corporate
      t.string :number_parking_corporate
      t.string :max_number_occupants_floor_corporate
      t.string :number_distinct_businesses_hybrid
      t.string :number_floors_hybrid
      t.string :number_basements_hybrid
      t.string :number_parking_hybrid
      t.string :max_number_occupants_floor_hybrid
      t.string :number_hours_activity
      t.string :product_line

      t.integer :elevator_need
      t.string :unit_price
      t.string :total_price
      t.string :installation_fees
      t.string :final_price

      t.timestamps
    end
  end
end