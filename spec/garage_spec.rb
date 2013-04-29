require 'garage'


	describe 'garage' do

		it 'a garage can fix broken bikes' do
			bike1 = double :bike, is_broken?: true
			bike2 = double :bike, is_broken?: false

			garage = Garage.new([bike1, bike2])

			bike1.should_receive(:fix)
			bike2.should_not_receive(:fix)

			garage.fix
		end

		it 'a garage can hold broken bikes' do
			bike1 = double :bike, is_broken?: true
			bike2 = double :bike, is_broken?: false

			garage = Garage.new([bike1, bike2])

			garage.broken_bikes.should eq [bike1]
		end

		it 'a garage can hold fixed bikes' do
			bike1 = double :bike, is_broken?: true
			bike2 = double :bike, is_broken?: false

			garage = Garage.new([bike1, bike2])

			garage.fixed_bikes.should eq [bike2]
		end

		it 'can collect broken bikes from a van' do
			van = double :van, deliver_to_garage: [:bike]
			garage = Garage.new

			garage.collect(van)

			garage.bikes.should eq [:bike]
		end

		it 'can deliver fixed bikes to a van' do
			van = double :van
			van.should_receive(:collect)
			bike = double :bike, is_broken?: false

			garage = Garage.new([bike])

			garage.deliver(van)
			garage.bikes.should eq []
		end
	end