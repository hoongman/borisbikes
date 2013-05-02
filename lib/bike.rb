class Bike
	def initialize(status)
		@is_broken = status
	end

	def is_broken?
		@is_broken
	end

	def break
		@is_broken = true
	end

	def fix
		@is_broken = false
	end
end