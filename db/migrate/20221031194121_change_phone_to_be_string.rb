class ChangePhoneToBeString < ActiveRecord::Migration[5.2]
  def change
    change_column :CreateBuildings, :technicalContactPhoneNumber, :string
    change_column :CreateBuildings, :adminPhoneNumber, :string
  end
end
