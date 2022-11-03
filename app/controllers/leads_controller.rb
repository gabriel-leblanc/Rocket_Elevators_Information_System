class LeadsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
    end

    def create
        puts params
        lead= Lead.new()
        lead.full_name_contact = params[:full_name_contact]
        lead.company_name = params[:company_name]
        lead.email = params[:email]
        lead.phone = params[:phone]
        lead.project_name = params[:project_name]
        lead.project_description = params[:project_description]
        lead.department_elevator = params[:department]
        lead.message = params[:message]
        lead.attached_file = params[:attached_file]
 

        lead.save()
    end
end

