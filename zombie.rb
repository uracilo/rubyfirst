class Zonbie
	def intialize (x, y)
	@x = x
	@y = y
	end

	def walk
		@direction = ["x","y"].sample
		if direction == "x"
			@x +=1
		elsif direction == "y"
			@y +=1
		end
	end	
		# @direction= [@x, @y].sample
		# @direction+= 1
	

	# def to_s
	# 	"Zombie position X=#{@x} and Y=#{@y}"
	# end
	def to_s
		"#{@x}, #{@y} braiiiiinsss"
	end
end



