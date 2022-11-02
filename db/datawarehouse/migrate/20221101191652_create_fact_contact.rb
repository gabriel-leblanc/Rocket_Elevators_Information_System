class CreateFactContact < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_contacts do |t|
      t.integer :contactid
      t.timestamp :creationdate
      t.string :companyname
      t.string :email
      t.string :projectname
    end
  end
end
