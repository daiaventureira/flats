require 'rails_helper'

describe 'Visitor view property' do 
    it 'view properties' do 
        Property.create(
            title: 'Casa com quintal em Copacabana',
            description: 'Excelente casa, recém reformada com 2 vagas de garagem',
            rooms: 3
        )
        Property.create(
            title: 'Cobertura em Manaus',
            description: 'Cobertura de 300m2, churrasqueira e sauna privativa',
            rooms: 5
        )
        

        visit root_path

        expect(page).to have_text('Casa com quintal em Copacabana')
        expect(page).to have_text('Excelente casa, recém reformada com 2 vagas de garagem')
        expect(page).to have_text('Quartos: 3')
        expect(page).to have_text('Cobertura em Manaus')
        expect(page).to have_text('Cobertura de 300m2, churrasqueira e sauna privativa')
        expect(page).to have_text('Quartos: 5')



    end
end
