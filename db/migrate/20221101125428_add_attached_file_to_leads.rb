class AddAttachedFileToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :attached_file, :binary
  end
end
