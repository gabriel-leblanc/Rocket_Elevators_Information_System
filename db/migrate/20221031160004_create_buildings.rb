class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :customerID
      t.string :buildingAddress
      t.string :adminFullName
      t.string :adminEmail
      t.string :adminPhoneNumber
      t.string :technicalContactFullName
      t.string :technicalContactEmail
      t.string :technicalContactPhoneNumber
    end
  end
end