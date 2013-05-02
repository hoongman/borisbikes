module BikeModule

	def stock
		@bikes
	end

	def add(bike)
		@bikes.concat bike
	end

	def fixed_bikes
		@bikes.select {|bike| !bike.is_broken?}
	end

	def broken_bikes
		@bikes.select {|bike| bike.is_broken?}
	end

	def return_fixed_bikes
		@bikes.delete_if {|bike| !bike.is_broken?}
	end
	

end