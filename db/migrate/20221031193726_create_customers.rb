class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.string :customers_creation_date
      t.string :company_name
      t.string :company_headquarters_adress
      t.string :fullname_company_contact
      t.string :company_contact_phone
      t.string :email_company_contact
      t.string :Company_description
      t.string :fullname_service_technical_authority
      t.string :technical_authority_phone_service
      t.string :technical_manager
      t.string :_email_service

      t.timestamps
    end
  end
end
