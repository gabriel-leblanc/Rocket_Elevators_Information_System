require 'pg'

namespace :datawarehouse do
    task FactElevators: :environment do
        Elevator.all.each do |elevator|
            FactElevator.create!(
                serial_number: elevator.serial_number,
                date_of_commissioning: elevator.date_commissioning,
                building_id: elevator.column.battery.building_id,
                customer_id: elevator.column.battery.building.customer_id,
                building_city: elevator.column.battery.building.customer.address.city
      
            )
            puts elevator.inspect
        end
        
    end

   
end
   