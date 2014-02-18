require_relative "../airport.rb"
require_relative "../planes.rb"
require_relative "../weather.rb"

include Weather


describe Airport do 

let (:airport) {Airport.new}
let (:plane) {Planes.new}



def fill_airport(airport)
      20.times{airport.dock(plane)}
      end


	it "it should be able to accept a plane" do
		expect(airport.plane_count).to eq(0)
		plane.land
		airport.dock(plane)
		expect(airport.plane_count).to eq(1)
    end

    it "should know when it reaches capacity"do
       expect(airport).not_to be_full
       fill_airport(airport)
       expect(airport).to be_full	
   end

   it "should not allow planes to land when full" do
   	  fill_airport(airport)
   	  expect(lambda{airport.dock(plane)}).to raise_error(RuntimeError)
   end

   it "should ground all planes when the weather is stormy" do 
    planes = []
    plane = Planes.new
    plane.take_off
    planes << plane
    airport.forcast('storm')
   	planes.each  { |plane| plane.not_cleared?}
  
end
   # it "should not allow planes to take off if weather is stormy" do
   #    plane.forcast('sunny')
   #    airport.forcast('sunny')
   #    expect(plane.forcast('sunny')).to be_ready
   #    end   

   # it "should allow planes to take off if the weather is sunny" do 
   # 	  airport.forcast
   # 	  expect(plane).to be_ready 
   # 	end


   

end
