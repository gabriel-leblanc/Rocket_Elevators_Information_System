class Createfactquote < ActiveRecord::Migration[5.2]
  def change
    create_table :FactQuotes do |t|
      t.integer :quoteid
      t.timestamp :creation
      t.string :companyname
      t.string :email
      t.integer :nbelevator
      
    end
  end
end
