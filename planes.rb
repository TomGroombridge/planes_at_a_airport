class Planes 

	def initialize
       @landed = true
       @not_cleared = true
	end

    def landed?
      @landed
      
    end 

    def not_cleared?
       @not_cleared 
       @landed
    end

    def ready
    	@not_cleared = false
    end

    def take_off
        @landed = false
        @not_cleared = false
    end

    def land
        @landed = true
    end

end