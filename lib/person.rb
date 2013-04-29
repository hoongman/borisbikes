class Person
	attr_reader :holds_bike	

	def initialize(holds_bike=[])
		@holds_bike = holds_bike
	end

	def holds_bike?
		!(@holds_bike == [])
	end

	def rent(station)
		@holds_bike << station.lease
	end

	def return(station)
		bike = @holds_bike
		@holds_bike = []
		station.end_lease(bike)
	end	
end