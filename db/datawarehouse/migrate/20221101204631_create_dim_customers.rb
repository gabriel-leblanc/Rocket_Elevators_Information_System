class CreateDimCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_customers do |t|
      t.datetime :creation_date
      t.string :company_name
      t.string :fullname_company_main_contact
      t.string :email_company_main_contact
      t.integer :nb_elevators
      t.string :customer_city
    end
  end
end