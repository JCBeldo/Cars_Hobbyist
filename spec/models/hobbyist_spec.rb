require 'rails_helper'

RSpec.describe Hobbyist, type: :model do
  let!(:hobbyist_1) { Hobbyist.create!(name: 'Joe John', insurance: true, garage_capacity: 22 )}
  let!(:hobbyist_2) { Hobbyist.create!(name: 'Billy Bob', insurance: false, garage_capacity: 6 )}
  let!(:mini) { hobbyist_1.cars.create!(make: 'Mini', model: 'Cooper', year: 1965, mileage: 65_045.15, drivable: true )}
  let!(:studebaker) { hobbyist_1.cars.create!(make: 'Studebaker', model: 'Commander', drivable: true, year: 1951, mileage: 80_000.08 )}
  let!(:jaguar) { Car.create!(make: 'Jaguar', model: 'E Type', drivable: false, year: 1970, mileage: 135_045.15, hobbyist: hobbyist_2 )}
  let!(:bizzarrini) { Car.create!(make: 'Bizzarrini', model: '5300 GT Strada', drivable: true, year: 1965, mileage: 14_066.44, hobbyist: hobbyist_2 )}
  
  describe "relationships" do
    it { should have_many :cars }
  end

  describe '#cars' do
    it 'returns all of the associated car objects' do
      
    expect(hobbyist_1.cars).to eq([mini, studebaker])
    end
  end

  describe 'instance methods' do
    describe '#car_count' do
      it 'returns a count of cars per hobbyist' do

        expect(hobbyist_1.car_count).to eq(2)
        expect(hobbyist_2.car_count).to eq(2)
      end
    end
  end

  describe 'class methods' do
    describe '::newest_first' do
      it 'returns hobbyists ordered by most recently created' do

      expect(Hobbyist.newest_first).to eq([hobbyist_2, hobbyist_1])
      end
    end
  end
end
