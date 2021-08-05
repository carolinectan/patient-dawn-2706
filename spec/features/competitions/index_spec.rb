require 'rails_helper'

RSpec.describe 'competition index page' do
  before :each do
    @comp1 = Competition.create!(name: 'Frisbeepalooza', location: 'Denver', sport: 'Frisbee Golf')
    @comp2 = Competition.create!(name: 'Soccerthon', location: 'Lyons', sport: 'Soccer')
    @comp3 = Competition.create!(name: 'Football Frenzy', location: 'Denver', sport: 'Frisbee Golf')

    visit "/competitions"
  end

  it 'displays the names of all competitions' do
    expect(page).to have_content(@comp1.name)
    expect(page).to have_content(@comp2.name)
    expect(page).to have_content(@comp3.name)
  end

  it 'displays the names as links' do
    expect(page).to have_link(@comp1.name)
    expect(page).to have_link(@comp2.name)
    expect(page).to have_link(@comp3.name)
  end

  it 'links from the comp name to the comp show page' do
    click_on(@comp1.name)

    expect(current_path).to eq("/competitions/#{@comp1.id}")
  end
end
