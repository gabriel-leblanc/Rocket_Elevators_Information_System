class RemoveStringFromLeads < ActiveRecord::Migration[5.2]
  def change
    remove_column :leads, :string, :string
  end
end
