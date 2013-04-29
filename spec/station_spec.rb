require 'station'

	describe 'bikes at a docking station:' do
		it 'a docking station can be initialized to hold bikes' do
			station = Station.new(:bikes)

			station.stock.should eq :bikes
		end

		it 'a Station can lease a bike to a person' do
			station = Station.new([:bike1,:bike2])
			
			station.lease
			station.stock.should eq [:bike1]
		end	

		it 'a Station can receive a bike back from a person' do
			station = Station.new([:bike1])
			
			station.end_lease(:bike2)
			station.stock.should eq [:bike1,:bike2]
		end

		it 'a Station had a number of availble bikes' do
			bike1 = double :Bike, is_broken?: false
			bike2 = double :Bike, is_broken?: true

			station = Station.new( [ bike1 , bike2 ] )

			station.avail_stock.should eq [ bike1 ]
		end

		it 'a Station had a number of unavailble broken bikes' do
			bike1 = double :Bike, is_broken?: false
			bike2 = double :Bike, is_broken?: true

			station = Station.new( [ bike1 , bike2 ] )

			station.unavail_stock.should eq [ bike2 ]
		end	

	end