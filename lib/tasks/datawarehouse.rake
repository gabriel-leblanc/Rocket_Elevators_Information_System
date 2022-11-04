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
            puts quote.inspect
        # Quote.each { |i| puts i }
        end
  end


    # task test: :environment do
    #     test = User.all.each do |user|
    #         puts "user :#{user.inspect}"
    #     end
        
    # end


    # task test_mysql_connection: :environment do
    #     test = ActiveRecord::Base.establish_connection
    #     puts "Current mysql connection: #{test.inspect}"
    # end

        
    
end
