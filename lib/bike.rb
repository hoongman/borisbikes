class Bike

	def initialize(broken)
		@broken = broken
	end

	def is_broken?
		@broken
	end

	def fix
		@broken = false
	end

end