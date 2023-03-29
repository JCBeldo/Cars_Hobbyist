require 'rails_helper'

RSpec.describe '/hobbyists/:id (Hobbyist show page)', type: :features do
  describe 'As a visitor when I visit the Hobbyists show page' do
    let!(:hobbyist_1) { Hobbyist.create!(name: 'Joe John', insurance: true, garage_capacity: 22 )}
    let!(:hobbyist_2) { Hobbyist.create!(name: 'Billy Bob', insurance: false, garage_capacity: 6 )}
    let!(:mini) { hobbyist_1.cars.create!(make: 'Mini', model: 'Cooper', year: 1965, mileage: 65_045.15, drivable: true )}
    let!(:studebaker) { hobbyist_1.cars.create!(make: 'Studebaker', model: 'Commander', drivable: true, year: 1951, mileage: 80_000.08 )}
    let!(:jaguar) { Car.create!(make: 'Jaguar', model: 'E Type', drivable: false, year: 1970, mileage: 135_045.15, hobbyist: hobbyist_2 )}
    let!(:bizzarrini) { Car.create!(make: 'Bizzarrini', model: '5300 GT Strada', drivable: true, year: 1965, mileage: 14_066.44, hobbyist: hobbyist_2 )}

    it "should display the the hobbyist's attributes" do
    visit "/hobbyists/#{hobbyist_1.id}"
    
    expect(page).to have_content("Joe John's Cars")
    expect(page).to have_content(hobbyist_1.name)
    expect(page).to have_content(hobbyist_1.insurance)
    expect(page).to have_content(hobbyist_1.garage_capacity)
    
    visit "/hobbyists/#{hobbyist_2.id}"

    expect(page).to have_content("Billy Bob's Cars")
    expect(page).to have_content(hobbyist_2.name)
    expect(page).to have_content(hobbyist_2.insurance)
    expect(page).to have_content(hobbyist_2.garage_capacity)
    end

    it 'should display the count of the cars' do
    visit "/hobbyists/#{hobbyist_1.id}"

    expect(page).to have_content("Current Number of Cars in Collection")
    end

    it 'links to car show page' do
    visit "/hobbyists/#{hobbyist_1.id}"

    click_link("Joe John's Cars")

    expect(current_path).to eq("/hobbyists/#{hobbyist_1.id}/cars")
    
    visit "/hobbyists/#{hobbyist_2.id}"
    # save_and_open_page
    click_link("Billy Bob's Cars")

    expect(current_path).to eq("/hobbyists/#{hobbyist_2.id}/cars")
    end
   
    it 'links to car index' do
    visit "/hobbyists/#{hobbyist_1.id}"

    click_link("Car Index")

    expect(current_path).to eq("/cars")
    end
    
    it 'links to car index' do
    visit "/hobbyists/#{hobbyist_1.id}"
      
    click_link("Hobbyist Index")
      
    expect(current_path).to eq("/hobbyists")
    end

    it 'links to the edit page from the hobbyists show page' do
      visit "/hobbyists/#{hobbyist_1.id}"
  
      click_link('Update Hobbyist')
  
      expect(current_path).to eq("/hobbyists/#{hobbyist_1.id}/edit")
    end
  
    it 'can update a hobbyist' do
      visit "/hobbyists/#{hobbyist_1.id}/edit"

      fill_in("Name", with: "Joe John")
      fill_in('Insurance', with: true)
      fill_in('garage_capacity', with: 10)
      click_button("Update Hobbyist")
  
      expect(current_path).to eq("/hobbyists")
      expect(page).to have_content("Joe John")
      expect(page).to have_content(true)
      expect(page).to have_content(10)
    end
  end
end