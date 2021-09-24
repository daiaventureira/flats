require 'rails_helper' 

describe 'Visitor register property types' do 
    it 'Successfully' do 
        PropertyType.create(name: 'Flat')

        visit property_types_path
        
        expect(page).to have_content('Flat')
    end

    it 'and not accept blank field' do
        PropertyType.create(name: '' )

        visit property_types_path

        expect { raise StandardError }.to raise_error

    end

    it 'and name should be unique' do 
        PropertyType.create(name: 'Flat')
        PropertyType.create(name: 'Flat')

        visit property_types_path 
        expect { raise StandardError }.to raise_error
    end

end
        