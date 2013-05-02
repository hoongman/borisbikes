require_relative '../lib/station.rb'

describe 'what a station does:' do 
	it 'can hold a bike' do 
		station = Station.new([:bike])

		station.stock.should eq [:bike]
	end

	it 'can lease a bike to a person' do 
		bike = double :bike, is_broken?: false

		station = Station.new([bike])
		station.lease.should eq [bike]
	end

	it 'after leasing a bike the bike is removed from bikes at the station' do 
		bike = double :bike, is_broken?: false

		station = Station.new([bike])
		station.lease
		station.stock.should eq []
	end

	it 'can receive a bike back from a person' do 
		bike = double :bike, is_broken?: false
		station = Station.new
		station.end_lease([bike])
		station.stock.should eq [bike]
	end
end