class Perro
	attr_accessor :nombre, :raza

	def saludar
		puts "Hola soy #{nombre}"
	end

	def ladrar
		puts "GUAU GUAU !!!"
	end

	def tipo
		puts "Soy del tipo de raza : #{raza}"
	end
end


puts " Cual es el nombre del perrito ?"
nombre = gets.chomp
puts " De que raza es ?"
raza = gets.chomp

perro_tipo = Perro.new
perro_tipo.nombre = nombre
perro_tipo.raza = raza

puts perro_tipo.saludar
puts perro_tipo.ladrar
puts perro_tipo.tipo

