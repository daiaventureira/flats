require 'rails_helper' 

describe 'Visitor register property types' do 
    it 'Successfully' do 
        PropertyLocation.create(name: 'Rio de Janeiro')

        visit property_locations_path
        
        expect(page).to have_content('Rio de Janeiro')
    end

    it 'and not accept blank field' do
        PropertyLocation.create(name: '' )

        visit property_locations_path

        expect { raise StandardError }.to raise_error

    end

    it 'and name should be unique' do 
        PropertyType.create(name: 'Rio de Janeiro')
        PropertyType.create(name: 'Rio de Janeiro')

        visit property_locations_path 
        expect { raise StandardError }.to raise_error
    end

end
        