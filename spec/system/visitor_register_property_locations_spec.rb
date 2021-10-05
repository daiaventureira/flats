require 'rails_helper' 

describe 'Visitor register property types' do 
    it 'Successfully' do 
        PropertyLocation.create!(name: 'Rio de Janeiro')

        visit property_locations_path
        
        expect(page).to have_content('Rio de Janeiro')
    end

    # it 'and not accept blank field' do
    #     PropertyLocation.create!(name: '' )

    #     expect(page).to have_content("Nome não pode ficar em branco")

    # end

    # it 'and name should be unique' do 
    #     PropertyType.create!(name: 'Rio de Janeiro')
    #     PropertyType.create!(name: 'Rio de Janeiro')

    #     visit property_locations_path 
    #     expect(page).to have_content("Name já está em uso")
    # end

end
        