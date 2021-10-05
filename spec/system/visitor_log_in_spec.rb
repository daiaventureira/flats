require 'rails_helper'

describe 'Visitor log in' do 
    context 'as property owner' do
        it 'successfully' do 
            property_owner = PropertyOwner.create!(email:'jane@doe.com.br', password:'123456789')

            visit root_path
            click_on 'Entrar'
            fill_in 'Email', with: property_owner.email
            fill_in 'Senha', with: property_owner.password
            within 'form' do
                click_on 'Entrar'
            end
            # expect(page).to have_content('Logou com sucesso!')
            expect(page).to have_content(property_owner.email)
            expect(page).to have_content('Logout')
            expect(page).to_not have_link('Entrar')
        end

    end
end
