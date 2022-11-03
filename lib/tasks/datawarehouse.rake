require 'pg'

namespace :datawarehouse do
    task test: :environment do
        test = User.all.each do |user|
            puts "user :#{user.inspect}"
        end
        
    end

    task test_mysql_connection: :environment do
        test = ActiveRecord::Base.establish_connection
        puts "Current mysql connection: #{test.inspect}"
    end

    task :test_postgresql_connection do
        
    end
end
