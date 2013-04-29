require 'bike'

describe 'bike object' do
     it 'will return false if asked is_broken? and not broken' do
     	marin = Bike.new(false)
     	marin.is_broken?.should be_false
     end

     it 'is_broken? will return true if broken' do
     	marin = Bike.new(true)
     	marin.is_broken?.should be_true
     end

     it 'a broken bike can be fixed' do
	     marin = Bike.new(true)
	     marin.fix

	     marin.is_broken?.should be_false
     end


end