require 'rails_helper'

RSpec.describe 'the Hobbyist creation' do
  it 'links to the new page from the hobbyists index' do
    visit '/hobbyists'

    click_link('New Hobbyist')

    expect(current_path).to eq('/hobbyists/new')
  end

  it 'can create a new hobbyist' do
    visit '/hobbyists/new'

    fill_in('Name', with: "Peter Paul")
    click_on("Create Hobbyist")

    expect(current_path).to eq("/hobbyists")
    expect(page).to have_content("Peter Paul")
  end

  it 'links to car index' do
    visit "/hobbyists/new"

    click_link("Car Index")

    expect(current_path).to eq("/cars")
  end
    
  it 'links to car index' do
    visit "/hobbyists/new"
      
    click_link("Hobbyist Index")
      
    expect(current_path).to eq("/hobbyists")
  end
end