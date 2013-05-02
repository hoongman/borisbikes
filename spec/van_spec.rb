require_relative '../lib/van'

	describe 'what a van does:' do 
		it 'can hold bikes' do
		van = Van.new([:bike])

		van.stock.should eq [:bike]
		end

		it 'can pick up broken bikes from a station' do
			bike = double :bike, is_broken?: true
			station = double :station, broken_bikes: [bike]
			station.should_receive(:return_broken_bikes)
			van = Van.new

			van.collect_broken_bikes(station)
			van.stock.should eq [bike]
		end

		it 'can deliver broken bikes to a garage' do 
			bike = double :bike, is_broken?: true
			van = Van.new([bike])
			garage = double :garage
			garage.should_receive(:add).with([bike])

			van.deliver_broken_bikes(garage)
			van.stock.should eq []
		end

		it 'can pick up fixed bikes from a garage' do 
			bike = double :bike, is_broken?: false
			garage = double :garage, fixed_bikes: [bike]
			garage.should_receive(:return_fixed_bikes)
			van = Van.new

			van.collect_fixed_bikes(garage)
			van.stock.should eq [bike]
		end

		it 'can deliver fixed bikes to a station' do 
			bike = double :bike, is_broken?: false
			van = Van.new([bike])
			station = double :station
			station.should_receive(:add).with([bike])

			van.deliver_fixed_bikes(station)
			van.stock.should eq []
		end
	end
