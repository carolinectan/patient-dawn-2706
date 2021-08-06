require 'rails_helper'

RSpec.describe , type: :model do
  describe 'relationships' do
    it { should belong_to(:) }
    it { should have_many(:) }
    it { should have_many(:).through(:) }
  end

  # describe 'validations' do
  #   it { should validate_presence_of(:) }
  # end
  #
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
  end

  # describe 'class methods' do
  #   describe '.' do
  #   end
  # end

  describe 'instance methods' do
    describe '#average_players_age' do
      it 'displays the competitions average players age' do
33.8)
      end
    end
  end
end
