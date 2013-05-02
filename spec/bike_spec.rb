require_relative '../lib/bike'

describe 'What a bike does:' do 

	it 'a bike has a status' do 
		bike = Bike.new(true)

		bike.is_broken?.should be_true
	end

	it 'a bike can be broken' do 
		bike = Bike.new(false)
		bike.break

		bike.is_broken?.should be_true
	end

	it 'a bike can be fixed' do 
		bike = Bike.new(true)
		bike.fix

		bike.is_broken?.should be_false
	end
end

