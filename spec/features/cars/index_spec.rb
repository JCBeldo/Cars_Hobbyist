require 'rails_helper'

RSpec.describe '/car_table_name/ (Car index page)', type: :features do
  describe 'as a visitor when I visit the index page' do
    let!(:hobbyist_1) { Hobbyist.create!(name: 'Joe John', insurance: true, garage_capacity: 22 )}
    let!(:hobbyist_2) { Hobbyist.create!(name: 'Billy Bob', insurance: false, garage_capacity: 6 )}
    let!(:mini) { hobbyist_1.cars.create!(make: 'Mini', model: 'Cooper', year: 1965, mileage: 65_045.15, drivable: true )}
    let!(:studebaker) { hobbyist_1.cars.create!(make: 'Studebaker', model: 'Commander', drivable: true, year: 1951, mileage: 80_000.08 )}
    let!(:jaguar) { Car.create!(make: 'Jaguar', model: 'E Type', drivable: false, year: 1970, mileage: 135_045.15, hobbyist: hobbyist_2 )}

    it 'should display the attributes of each car' do
      visit "/car_table_name"
      save_and_open_page
      expect(page).to have_content("Cars")
      expect(page).to have_content(mini.make)
      expect(page).to have_content(mini.model)
      expect(page).to have_content(mini.drivable)
      expect(page).to have_content(mini.year)
      expect(page).to have_content(mini.mileage)

      expect(page).to have_content(studebaker.make)
      expect(page).to have_content(studebaker.model)
      expect(page).to have_content(studebaker.drivable)
      expect(page).to have_content(studebaker.year)
      expect(page).to have_content(studebaker.mileage)
    end
  end
end