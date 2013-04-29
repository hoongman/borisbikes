require 'van'

describe 'what a van does' do
	it 'can collect bikes from a station' do
		van = Van.new
		van.collect([:bike])
		van.collected.should eq [:bike]
	end

	it 'can deliver repaired bikes to a station' do
		bike = double :bike, is_broken?: false
		van = Van.new([bike])

		van.deliver_to_station
		van.collected.should eq []	
	end

	it 'can deliver broken bikes to a garage' do
		bike = double :bike, is_broken?: true
		van = Van.new([bike])

		van.deliver_to_garage
		van.collected.should eq []
	end
end