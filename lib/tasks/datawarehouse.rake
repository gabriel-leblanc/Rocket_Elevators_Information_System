require 'pg'

namespace :datawarehouse do
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
