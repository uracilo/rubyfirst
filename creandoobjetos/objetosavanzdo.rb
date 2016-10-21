class AnimalTerrestreQueCamina
	def initialize(velocidad)
		@velocidad = velocidad
		@posicion = 0		
	end
	def caminar
		@posicion += @velocidad
		puts "Avance #{@posicion} pasos"
	end
end

class Perro < AnimalTerrestreQueCamina
	def initialize(velocidad)
		super(velocidad)		
	end
end



	fido = Perro.new(1)
	firulais.caminar