require_relative "../weather.rb"
require_relative "../airport.rb"
require_relative "../planes.rb"

include Weather

describe Weather do 

	
	let (:planes){Planes.new}
	let (:airport){Airport.new}

       
       it "should know what the weather forcast is for that day" do 
       	forcast('weather')
       	expect(['sunny', 'storm']).to include airport.forcast('weather')
       end

       


	end