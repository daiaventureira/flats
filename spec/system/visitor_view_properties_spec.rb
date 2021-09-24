require 'rails_helper'

describe 'Visitor view property' do 
    it 'view properties' do 
        Property.create(
            title: 'Casa com quintal em Copacabana',
            description: 'Excelente casa, recém reformada com 2 vagas de garagem',
            rooms: 3,
        )
        Property.create(
            title: 'Cobertura em Manaus',
            description: 'Cobertura de 300m2, churrasqueira e sauna privativa',
            rooms: 5,
        )

        visit root_path

        expect(page).to have_content('Casa com quintal em Copacabana')
        expect(page).to have_content('Excelente casa, recém reformada com 2 vagas de garagem')
        expect(page).to have_content('Quartos: 3')
        expect(page).to have_content('Cobertura em Manaus')
        expect(page).to have_content('Cobertura de 300m2, churrasqueira e sauna privativa')
        expect(page).to have_content('Quartos: 5')
    end       
    
    it 'view details' do 
        Property.create(
            title: 'Cobertura em Manaus',
            description: 'Cobertura de 300m2, churrasqueira e sauna privativa',
            rooms: 5,
            bathrooms: 4,
            parking_spots: false,
            pets: true,
            daily_price: 400
        )

        visit root_path
        click_on 'Cobertura em Manaus'

        expect(page).to have_content('Cobertura em Manaus')
        expect(page).to have_content('Cobertura de 300m2, churrasqueira e sauna privativa')
        expect(page).to have_content('Quartos: 5')
        expect(page).to have_content('Banheiros: 4')
        expect(page).to have_content('Estacionamento: Não')
        expect(page).to have_content('Pets: Sim')
        expect(page).to have_content('Diária: R$ 400')
    end

    it 'and returns to home page' do
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
        click_on 'Voltar'
    
        expect(current_path).to eq root_path
      end 
 
end

