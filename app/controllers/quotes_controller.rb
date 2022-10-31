class QuotesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def form
    end
    
    def create
        quote= Quote.new()
        quote.building_type = params[:radio_quote]


        # residential
         quote.number_apartments = params[:number_apartments]
         quote.number_floors_residential = params[:number_floors_residential]
         quote.number_basements_residential = params[:number_basements_residential]

        # commercial
         quote.number_distinct_businesses_commercial = params[:number_distinct_businesses_commercial]
         quote.number_floors_commercial = params[:number_floors_commercial]
         quote.number_basements_commercial = params[:number_basements_commercial]
         quote.number_parking_commercial = params[:number_parking_commercial]
         quote.number_elevators = params[:number_elevators]
         quote.number_elevators = params[:number_elevators]
         
         
         #  corporate
         quote.number_separate_companies = params[:number_separate_companies]
         quote.number_floors_corporate = params[:number_floors_corporate]
         quote.number_basements_corporate = params[:number_basements_corporate]
         quote.number_parking_corporate = params[:number_parking_corporate]
         quote.max_number_occupants_floor_corporate = params[:max_number_occupants_floor_corporate]
         
         
         #  hybrid
         quote.number_distinct_businesses_hybrid = params[:number_distinct_businesses_hybrid]
         quote.number_floors_hybrid = params[:number_floors_hybrid]
         quote.number_basements_hybrid = params[:number_basements_hybrid]
         quote.number_parking_hybrid = params[:number_parking_hybrid]
         quote.max_number_occupants_floor_hybrid = params[:max_number_occupants_floor_hybrid]
         quote.number_distinct_businesses_hybrid = params[:number_distinct_businesses_hybrid]
         quote.number_hours_activity = params[:number_hours_activity]

        # produc line
        quote.product_line = params[:product_line]


        #  output
        quote.elevator_need = params[:elevator_need]
        quote.unit_price = params[:unit_price]
        quote.total_price = params[:total_price]
        quote.installation_fees = params[:installation_fees]
        quote.final_price = params[:final_price]























         



        quote.save()
    end
end
