require 'pg'

namespace :datawarehouse do
    task test: :environment do
        test = User.all.each do |user|
            puts "user :#{user.inspect}"
        end
        
    end

    # task FactQuotes: :environment do
    #     FactQuotes = User.all.each do |user|
    #         puts "user :#{user.inspect}"
    #     end
        
    # end

    task FactContact: :environment do
        FactContact = User.all.each do |user|
            puts "user :#{user.inspect}"
            
        end
        
    end

end

# task test_mysql_connection: :environment do
#     test = ActiveRecord::Base.establish_connection
#     puts "Current mysql connection: #{test.inspect}"
# end

# task :test_postgresql_connection do
    
# end


# gem pg
# ou gem multiverse