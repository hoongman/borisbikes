require_relative 'bikemodule'

class Person
	include BikeModule

	def initialize(bike=[])
		@bikes = bike
	end

	def add(bike)
		@bikes.concat bike
	end

	def rent(station)
		if @bikes == [] then add(station.lease)
		else puts "a person can only rent one bike at a time!"
		end
	end

	def return(station)
		station.end_lease(@bikes)
		@bikes = []
	end

end