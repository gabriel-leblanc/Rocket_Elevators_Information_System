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
    task factQuotes: :environment do
        # quoteid / creation/company name / email / nb elevator
        Quote.all.each do |quote|
            FactQuote.create!(
                
                quote_id: quote.id,
                creation: quote.created_at,
                nb_elevator: quote.elevator_need,
                company_name: quote.company_name,
                email: quote.company_email

            )
          
        end
    end
    task factContact: :environment do
        Lead.all.each do |contact|
            FactContact.create!(
                contactid: contact.id,
                creationdate: contact.created_at,
                companyname: contact.company_name,
                email: contact.email,
                projectname: contact.project_name
            )
            puts contact.id
            puts contact.created_at
            puts contact.company_name
            puts contact.email
            puts contact.project_name
            
        end
  end
end
