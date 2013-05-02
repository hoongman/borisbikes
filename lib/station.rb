require_relative 'bikemodule'

class Station
	include BikeModule

	alias :end_lease :add

	def initialize(stock=[])
		@bikes = stock
	end

	def lease
		lease = [fixed_bikes.pop]
		@bikes.delete(fixed_bikes.pop)
		lease
	end

	def return_broken_bikes
		bikes = broken_bikes
		@bikes.delete_if {|bike| bike.is_broken?}
	end


end