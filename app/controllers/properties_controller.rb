class PropertiesController < ApplicationController 
    def show 
        @properties = Property.find(params[:id])
    end

    def new 
        @properties = Property.new 
    end

    def create 
        @property = Property.new(property_params)
        if @property.save
            redirect_to @property
        else
            render :new 
        end
    end

    def edit 
        @property = Property.find(params[:id])
    end


     def update 
        @property = Property.find_by(params[:id])
        if @property.update(property_params) 
            redirect_to property_path(@property.id)

        end
     end


    private 
        def property_params 
            params.require(:property).permit(:title, :description, :rooms, :bathrooms, :daily_price, :pets, :parking_spots, :property_type_id)
        end
end
