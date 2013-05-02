require_relative 'bikemodule'

class Van
	include BikeModule

	def initialize(bike=[])
		@bikes=bike
	end

	def collect_broken_bikes(station)
		add(station.broken_bikes)
		station.return_broken_bikes
	end

	def deliver_broken_bikes(garage)
		garage.add(broken_bikes)
		@bikes.delete_if {|bike| bike.is_broken?}
	end

	def collect_fixed_bikes(garage)
		add(garage.fixed_bikes)
		garage.return_fixed_bikes
	end

	def deliver_fixed_bikes(station)
		station.add(fixed_bikes)
		@bikes.delete_if {|bike| !bike.is_broken?}
	end

end
