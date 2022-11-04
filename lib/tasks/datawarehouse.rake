require 'pg'

namespace :datawarehouse do

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
