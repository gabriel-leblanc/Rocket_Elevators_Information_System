class AddColumnToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :company_email, :string
    add_column :quotes, :company_name, :string
  end
end
