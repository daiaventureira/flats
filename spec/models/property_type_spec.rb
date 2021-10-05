require 'rails_helper'

describe PropertyType do 
    context 'validations' do 
        it 'title must be present' do 
            property_type = PropertyType.new 
            property_type.valid? 
            expect(property_type.errors.full_messages_for(:name)).to include("Nome não pode ficar em branco")
        end
        # it 'description must be present' do 
        #     property = Property.create('Flat').to_h 

        #     property.valid? 
        #     expect(property.errors.full_messages_for(:description)).to include("Descrição não pode ficar em branco")
        # end
        
    end
end
