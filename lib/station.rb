class Station
	attr_reader :bikes

	def initialize(bikes = [])
		@bikes = bikes
	end

	def stock
		@bikes
	end

	def avail_stock
		@bikes.select { |bike| !bike.is_broken? }
	end

	def unavail_stock
		@bikes.select { |bike| bike.is_broken? }
	end

	def lease
		leased_bike = @bikes.pop
		leased_bike
	end

	def end_lease(bike)
		@bikes << bike
	end


end