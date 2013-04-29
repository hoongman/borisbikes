require 'person'

describe 'what a Person can do:' do
	let(:person) {Person.new}

	it 'a Person when initialized does not hold a bike' do
		person.holds_bike?.should eq false
	end	

	it 'a Person can rent a bike from a Station' do
		station = double :station
		station.should_receive(:lease).and_return(:bike)

		person.rent(station)
		person.holds_bike?.should eq true
	end

	it 'a Person can return a bike to a Station' do
		station = double :station
		station.should_receive(:end_lease)

		person.return(station)
		person.holds_bike?.should eq false
	end


end