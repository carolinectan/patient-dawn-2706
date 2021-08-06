require 'rails_helper'

RSpec.describe 'competition show spec' do
  before :each do
    @comp1 = Competition.create!(name: 'Frisbeepalooza', location: 'Denver', sport: 'Frisbee Golf')

    @team1 = @comp1.teams.create!(hometown: 'Santa Barbara', nickname: 'Baby Sharks')
    @team2 = @comp1.teams.create!(hometown: 'Santa Barbara', nickname: 'Baby Sharks')
    @team3 = @comp1.teams.create!(hometown: 'Santa Barbara', nickname: 'Baby Sharks')

    @player1 = @team1.players.create!(name: 'Amanda', age: 34)
    @player2 = @team1.players.create!(name: 'Carina', age: 33)

    @player3 = @team2.players.create!(name: 'Ezze', age: 35)
    @player4 = @team2.players.create!(name: 'Ozzie', age:36)

    @player5 = @team3.players.create!(name: 'Jason', age: 40)
    @player6 = @team3.players.create!(name: 'Jacob', age: 25)

    visit "/competitions/#{@comp1.id}"
  end

  it "displays the competition's name, location, and sport" do
    expect(page).to have_content(@comp1.name)
    expect(page).to have_content(@comp1.location)
    expect(page).to have_content(@comp1.sport)
  end

  it "displays the nickname and hometown of all teams in this competition" do
    expect(page).to have_content(@team1.nickname)
    expect(page).to have_content(@team1.hometown)

    expect(page).to have_content(@team2.nickname)
    expect(page).to have_content(@team2.hometown)

    expect(page).to have_content(@team3.nickname)
    expect(page).to have_content(@team3.hometown)
  end

  it 'displays the average age of all players in the competition' do
    expect(page).to have_content(33.8)
  end

  xit 'has a link to register a new team' do

    # As a user
    # When I visit a competition's show page
    # Then I see a link to register a new team
    # When I click this link
    # Then I am taken to a new page where I see a form
    # When I fill in this form with a team's hometown and nickname
    # And I click submit
    # Then I am redirected back to the competition's show page
    # And I see the new team I created listed
  end
end
