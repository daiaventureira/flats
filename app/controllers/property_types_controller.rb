class PropertyTypesController < ApplicationController 
    def index 
        @property_types = PropertyType.all
    end

    def new 
        @property_types = PropertyType.new
    end
end
