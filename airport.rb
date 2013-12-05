class Airport 

	def initialize  
		@capcaity = 20 
	end

	def planes
		@planes ||= []
	end

	def plane_count
		planes.count
	end

	def dock(plane)
		raise "airport is full" if full?
		planes << plane
	end

	def full?
		plane_count == @capcaity
	end



end