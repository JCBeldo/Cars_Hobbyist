require 'rails_helper'

RSpec.describe '/hobbyists (hobbyist index page)', type: :features do
  describe 'as a visitor when I visit the index page' do
    let!(:hobbyist_1) { Hobbyist.create(name: 'Joe John', insurance: true, garage_capacity: 22 )}
    let!(:hobbyist_2) { Hobbyist.create(name: 'Billy Bob', insurance: false, garage_capacity: 6 )}

    it 'should display the name of each hobbyist' do
      visit "/hobbyists"
      save_and_open_page
      expect(page).to have_content("Hobbyists")
      expect(page).to have_content(hobbyist_1.name)
      expect(page).to have_content(hobbyist_2.name)
      expect(page).to have_content(hobbyist_1.insurance)
      expect(page).to have_content(hobbyist_1.garage_capacity)
    end
  end
end
