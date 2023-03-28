require 'rails_helper'

RSpec.describe '/hobbyists/:id (Hobbyist show page)', type: :features do
  describe 'As a visitor when I visit the Hobbyists show page' do
    let!(:hobbyist_1) { Hobbyist.create!(name: 'Joe John', insurance: true, garage_capacity: 22 )}
    let!(:hobbyist_2) { Hobbyist.create!(name: 'Billy Bob', insurance: false, garage_capacity: 6 )}

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
  end
end