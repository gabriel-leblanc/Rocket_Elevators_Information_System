require 'pg'

namespace :datawarehouse do
<<<<<<< HEAD
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
           puts Elevator.find(1)
            puts quote.inspect
        # Quote.each { |i| puts i }
=======

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
            
>>>>>>> dev
        end
  end

<<<<<<< HEAD

    # task test: :environment do
    #     test = User.all.each do |user|
    #         puts "user :#{user.inspect}"
    #     end
        
    # end


    # task test_mysql_connection: :environment do
    #     test = ActiveRecord::Base.establish_connection
    #     puts "Current mysql connection: #{test.inspect}"
    # end

        
    
=======
>>>>>>> dev
end
