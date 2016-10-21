require 'gosu'
requiere_relative 'zoombie'

class MyWindow < Gosu::Window
	def intilialize
			super (500,500)
			self.caption = "Brains de los Zoombies"
			
			@zoombie = []
			@zoombieRapidos = []
			@zoombieChistoso = []

		File.open("zombie.txt", "r").readlines.each do  |line|
			coords = line.split(",")
			coords.map!(&:to_i)
			@zombie << Zombie.new (coords [0], coords [1])			
		end
		File.open("zombierapidos.txt", "r").readlines.each do  |file| 
			coords = line.split(",")
			coords.map!(&:to_i)
			@zombie << ZombieRapido.new(coords[0], coords[1])
		end
		File.open("zombiechistoso.txt", "r").readlines.each do  |file| 
			coords = line.split(",")
			coords.map!(&:to_i)
			@zombie << ZombieChistoso.new(coords[0], coords[1])
		end
	end


	def update
		@zombies.each do |z|
			z.update
		end
		@zoombieRapidos.each do |z|
			z.update
		end
		@zoombieChistoso.each do |z|
			z.update
		end
	end


	def draw
		@zombies.each do |z|
			z.draw
		end
		@zoombieRapidos.each do |z|
			z.draw
		end
		@zoombieChistoso.each do |z|
			z.draw
		end
	end

end



window = MyWindow.new
window.show


