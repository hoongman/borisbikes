require_relative '../lib/person'

describe 'what a person does:' do 
	it 'a person can hold a bike' do 
		person = Person.new([:bike])

		person.stock.should eq [:bike]
	end

	it 'a person can rent a bike from a station' do 
		person = Person.new
		station = double :station, lease: [:bike]
		person.rent(station)

		person.stock.should eq [:bike]
	end

	it 'a person can return a bike to a station' do 
		person = Person.new([:bike])
		station = double :station
		station.should_receive(:end_lease)
		person.return(station)

		person.stock.should eq []
	end

	it 'a person can only rent one bike at a time' do
		person = Person.new([:bike])
		station = double :station, lease: [:bike]
		person.rent(station)

		person.stock.should eq [:bike]

	end

end