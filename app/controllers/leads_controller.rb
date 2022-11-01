class LeadsController < ApplicationController

    def index
    end

    def create
        lead= Lead.new()
        lead.full_name_contact = params[:radio_lead]
        lead.company_name = params[:number_apartments]
        lead.email = params[:number_floors_residential]
        lead.phone = params[:number_basements_residential]
        lead.project_name = params[:number_distinct_businesses_commercial]
        lead.project_description = params[:number_floors_commercial]
        lead.department_elevator = params[:number_basements_commercial]
        lead.message = params[:number_parking_commercial]
        lead.attached_file = params[:number_elevators]
 

        lead.save()
    end
end

