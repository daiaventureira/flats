class HomeController < ApplicationController 
    def index  
        @properties = Property.all
    end
    def show 
        @properties = Property.where(params[:id])
    end
end
