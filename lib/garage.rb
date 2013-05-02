require_relative 'bikemodule'

class Garage
	include BikeModule

	def initialize(bike=[])
		@bikes = bike
	end

	def fix
		@bikes.select {|bike| bike.fix if bike.is_broken?}
	end

end
