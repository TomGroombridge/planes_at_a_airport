require_relative "../planes.rb"


describe Planes do 

	let (:plane) {Planes.new}

	it "should be landed when created" do
		plane
		expect(plane).to be_landed 
	end

	it "should be able to be cleared for take off" do
		plane.ready
		expect(plane).not_to eq('not_cleared')
	end

	it "should be able to not be cleared for take off" do
		plane
		expect(plane).to be_not_cleared
	end

	it "should be able to take off when cleared" do
		plane.ready
		plane.take_off
		expect(plane).not_to be_landed
	end

	it "should be able to land after take off" do
		plane.ready
		plane.take_off
		plane.land
		expect(plane).to be_landed
	end
	
end