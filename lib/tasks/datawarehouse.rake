require 'pg'

namespace :datawarehouse do
    task dimCustomer: :environment do
        


     Customer.all.each do |customer|
        elevator_count = 0
             customer.buildings.all.each do |building|
                 building.batteries.all.each do |batterie|
                    batterie.columns.all.each do |column|
                       elevator_count += 1
                    end
                 end
                 end
                DimCustomer.create!(
                creation_date: customer.customers_creation_date,
                company_name: customer.company_name,
                fullname_company_main_contact: customer.fullname_company_contact,
                email_company_main_contact: customer.email_company_contact,
                customer_city: customer.address.city,
                 nb_elevators:  elevator_count
            )
        end
    end
end
