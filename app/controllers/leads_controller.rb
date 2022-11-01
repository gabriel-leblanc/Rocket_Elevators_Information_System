class LeadsController < ApplicationController

    def index
    end

    def create
        puts params
        lead= Lead.new()
        lead.full_name_contact = params[:contact:fullName]
        lead.company_name = params[:contact:businessName]
        lead.email = params[:contact:email]
        lead.phone = params[:contact:phone]
        lead.project_name = params[:contact:projectName]
        lead.project_description = params[:number_floors_commercial]
        lead.department_elevator = params[:number_basements_commercial]
        lead.message = params[:contact:message]
        lead.attached_file = params[:contact:attachment]
 

        lead.save()
    end
end

