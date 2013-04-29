class Van

	def initialize(collected = [])
		@collected = collected
	end

	def collected
		@collected
	end

	def collect(bike)
		@collected.concat bike
	end

	def deliver_to_station
		deliver = @collected.select {|bike| !bike.is_broken?}
		@collected.delete_if {|bike| !bike.is_broken?}
		deliver
	end

	def deliver_to_garage
		deliver = @collected.select {|bike| bike.is_broken?}
		@collected.delete_if {|bike| bike.is_broken?}
		deliver
	end
end
