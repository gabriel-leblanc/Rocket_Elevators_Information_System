require 'pg'

namespace :datawarehouse do
    task dimCustomer: :environment do
        

            DimCustomer.create!(
                creation_date: customer.customers_creation_date,
                company_name: customer.company_name,
                fullname_company_main_contact: customer.fullname_company_contact,
                email_company_main_contact: customer.email_company_contact,
                customer_city: customer.address.city,
                # nb_elevators:   
                
                
            )
            
        end
    end
end
