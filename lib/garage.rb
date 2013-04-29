class Garage

	def initialize(bikes = [])
		@bikes = bikes
	end

	def bikes
		@bikes
	end

	def fix
		@bikes.each { |bike| bike.fix if bike.is_broken? }
		#take brokenbikes
		#brokenbikes = @bikes.select { |bike| bike.is_broken? }

		#fix each bike in brokenbikes
		#brokenbikes.each { |bike| bike.fix }
	end

	def broken_bikes
		@bikes.select {|bike| bike.is_broken?}
	end

	def fixed_bikes
		@bikes.select {|bike| !bike.is_broken?}		
	end

	def collect(van)
		@bikes.concat van.deliver_to_garage
	end

	def deliver(van)
		van.collect(@bikes.select {|bike| !bike.is_broken?}	)
		@bikes.delete_if {|bike| !bike.is_broken?}
	end



end