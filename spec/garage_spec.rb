require_relative '../lib/garage'

describe 'what a garage does:' do 
	it 'can hold bikes' do 
		garage = Garage.new([:bike])

		garage.stock.should eq [:bike]
	end

	it 'can repair bikes using the bike.fix method' do 
	bike1 = double :bike1, is_broken?: true
  bike2 = double :bike2, is_broken?: false

  bike1.should_receive(:fix)

  garage = Garage.new([bike1,bike2])
  garage.fix
	end

end
