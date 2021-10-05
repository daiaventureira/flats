require 'rails_helper' 

describe 'Visitor register property types' do 
    it 'Successfully' do 
        PropertyType.create!(name: 'Flat')

        visit property_types_path
        
        expect(page).to have_content('Flat')
    end


    it 'and name should be unique' do 
        PropertyType.create!(name: 'Flat')
        property_type = PropertyType.new(name: 'Flat')
        property_type.valid?
        
        expect(PropertyType.count).to eq(1)
    end
end
