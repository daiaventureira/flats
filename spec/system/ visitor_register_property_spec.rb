require 'rails_helper'

describe 'Visitor register property' do
    it 'Successfully' do
        visit root_path 
        click_on 'Adicionar propriedade'

        fill_in 'Título', with: 'Casa em Jericoacoara'
        fill_in 'Descrição', with: 'Casa com vista para o mar'
        fill_in 'Quartos', with: '3'
        fill_in 'Banheiros', with: '2'
        fill_in 'Diária', with: 200 
        check 'Pets'
        check 'Estacionamento'
        click_on 'Enviar'

        expect(page).to have_content('Casa em Jericoacoara')
        expect(page).to have_content('Casa com vista para o mar')
        expect(page).to have_content('Quartos: 3')
        expect(page).to have_content('Diária: R$ 200')
        expect(page).to have_content('Pets: Sim')
        expect(page).to have_content('Estacionamento: Sim')

    end 
    
    it 'and edit a property' do 
        property =  Property.create(
            title: 'Casa com quintal em Copacabana',
            description: 'Excelente casa, recém reformada com 2 vagas de garagem',
            rooms: 3,
            bathrooms: 2,
            parking_spots: true,
            pets: true,
            daily_price: 300
        )

        visit root_path 
        click_on 'Casa com quintal em Copacabana'
        click_on 'Editar'
        
        fill_in 'Título', with: 'Casa em Minas Gerais'

        click_on 'Enviar'
        visit property_path(property.id)

        expect(page).to have_content('Casa em Minas Gerais')
    end
end
