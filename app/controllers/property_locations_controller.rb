class PropertyLocationsController < ApplicationController 
    def index 
        @property_locations = PropertyLocation.all
    end

    def new 
        @property_locations = PropertyLocation.new
    end
end
