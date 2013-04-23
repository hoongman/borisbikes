class DockingStation
	def initialize
		@STOCK = [:bike1,:bike2]
	end

	def stock
		@STOCK
	end

	def rent
		self.stock.pop
	end

end