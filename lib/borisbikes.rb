require_relative 'bike'
require_relative 'person'
require_relative 'station'
require_relative 'van'
require_relative 'garage'

bike1=Bike.new(false)
bike2=Bike.new(false)
bike3=Bike.new(false)
bike4=Bike.new(true)

station1 = Station.new([bike1,bike2,bike3,bike4])
station2 = Station.new

person = Person.new

garage = Garage.new

van = Van.new