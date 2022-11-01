class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :full_name_contact
      t.string :company_name
      t.string :email
      t.string :phone
      t.string :project_name
      t.text :project_description
      t.string :department_elevator
      t.string :string
      t.text :message
      t.date :date_contact_request

      t.timestamps
    end
  end
end
