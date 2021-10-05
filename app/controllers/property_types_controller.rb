class PropertyTypesController < ApplicationController 
    def index 
        @property_types = PropertyType.all
    end

    def show 
        @property_types = PropertyType.find(params[:id])
    end
    
    def create 
        @property_types = PropertyType.new(property_type_params)
        if @property_types.save
            redirect_to root_path
        else
            redirect_to "/property_types/new", notice: 'Todos campos devem ser preenchidos'

        end
    end


    def new 
        @property_types = PropertyType.new
    end

    private 
    
    def property_type_params
        params.require(:property_type).permit(:name)
    end
end
