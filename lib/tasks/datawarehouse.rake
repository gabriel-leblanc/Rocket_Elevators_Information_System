require 'pg'




namespace :datawarehouse do
    task dimCustomer: :environment do
        

        Customer.all.each do |customer|
            
            puts customer.buildings.all.batteries.all.ids
        #     DimCustomer.create!(
        #         creation_date: customer.customers_creation_date,
        #         company_name: customer.company_name,
        #         fullname_company_main_contact: customer.fullname_company_contact,
        #         email_company_main_contact: customer.email_company_contact,
        #         customer_city: customer.address.city,
        #         # nb_elevators: customer.buildings.batteries.columns.elevators.count(),  
                
        #         # nb_elevators: nb_elevator
        #     )
        #     # puts customer.nb_elevators
        end
    end
end
# test = Customer.all.each do |customer|
#     customer.buildings.all.each do |building|
#       ...
#     end
#   end

    # puts "user :#{user.inspect}"