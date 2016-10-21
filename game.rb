class Game
	attr_reader :zombies
	def initialize
		@zombies = []
	end
	def prepare
		File.open("zobie_position.txt").readlines.each do  |line|
			x, y = line.strip.split(" ")
			@zombies << Zombie.new(x, y)
		end
	end
end