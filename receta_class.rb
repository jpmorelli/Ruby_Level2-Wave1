class Receta
	def initialize
		@listado_de_ingredientes = []
	end

	def agrega_ingredientes(ingrediente)
		@listado_de_ingredientes << ingrediente		
	end

	def borra_ingredientes(ingrediente)
		@listado_de_ingredientes.delete(ingrediente)
	end
	
	def lista_ingredientes
		i = 0
		puts "Ingredientes:"
		@listado_de_ingredientes.each do |items|
		puts " - #{@listado_de_ingredientes[i]}"
		i += 1
		end
	end
end

def menu_options
puts "1 - Ingresar ingrediente de la receta"
puts "2 - Imprime la lista de ingrediente"
puts "3 - Borrar ingrediente"
puts "4 - Salir"
end

#Main Program

receta = Receta.new

loop do
	menu_options
	selected_option = gets.chomp
	case selected_option
	when "1"
		puts "Nombre del ingrediente ? : "
		ingre = gets.chomp
		receta.agrega_ingredientes(ingre)
	when "2"
		receta.lista_ingredientes
	when "3"
		puts "Nombre del ingrediente a borrar ? :"
		ingre = gets.chomp
    receta.borra_ingredientes(ingre)
	when "4"
		puts "Adios ! Gracias por usar nuestro programa de recetas"
		break
	  else
		puts "Por favor ingrese una opción valida."
	end
end


#Ingresa el nombre del ingrediente e inicializa la clase, creando el array con el primer ingrediente
# x = gets.chomp.to_s
# receta = Receta.new
# receta.agrega_ingredientes(x)


#Agrega un ingrediente
# receta.agrega_ingredientes(x)


#Lee el Array y lista los ingredientes
# receta.lista_ingredientes

