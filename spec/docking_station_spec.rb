require_relative '../lib/dockingstation.rb'

describe "DockingStation" do
	it 'DockingStation has an array of :bike(s)' do
		first = DockingStation.new
		first.stock.should eq [:bike1,:bike2]
	end

	it 'if .rent at a DockingStation, a :bike is removed' do
		first = DockingStation.new
		first.rent
		first.stock.should eq [:bike1]
	

end