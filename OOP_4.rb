# Implementar la clase Trivia, compuesta por un conjunto de elementos de la clase Preguntas. Toda Trivia
# debe ser creada indicando la cantidad de preguntas que tendrá.
# Las Preguntas deben tener una serie de respuestas asociadas, de las cuales sólo una puede ser la correcta.
# Además, cada pregunta tiene una Clasificación (Cine, Música, Deporte, Política).
# Debemos poder:
#  
# Agregar/Remover una respuesta dentro de una pregunta.
# Cambiar la respuesta correcta de una pregunta.
# Cambiar la categoría de una pregunta.
# Averiguar de cuántas preguntas está conformada la trivia.
# Saber cuántas preguntas hay de una cierta categoría.
# Listar las opciones de una cierta pregunta.
# Agregar/Remover una pregunta.
# Agregar categorías.
# Validar si una respuesta es la correcta para su pregunta.
# Proveer un vector con las respuestas contestadas por un usuario, y calcular el puntaje logrado en la trivia.


class Trivia
	attr_accessor :name

end

require 'byebug'

class Pregunta
  def initialize
    @lista_categorias = ['Cine','Musica','Deporte','Politica']
    @categoria_pregunta = []
    @lista_preguntas = []
    @lista_respuestas = []
    @resp_correcta = []
	end
    
  def agrega_pregunta
    puts "En que categoria agrega la pregunta ?"

    list_cat
    
    selected_option = gets.chomp.to_i - 1
    puts "Ud. eligio la categoria: #{@lista_categorias[selected_option]}"
    
    @categoria_pregunta << selected_option  
    
    puts "Ingrese la pregunta : "
    preg = gets.chomp.to_s

    @lista_preguntas << preg

    puts "Ingrese 3 posibles respuestas:"
    puts "Respuesta 1:"
    resp1 = gets.chomp.to_s
    puts "Respuesta 2:"
    resp2 = gets.chomp.to_s
    puts "Respuesta 3:"
    resp3 = gets.chomp.to_s 
		@lista_respuestas << [resp1 , resp2 , resp3]
		
    puts "Cual es la opcion correcta ?"
    @resp_correcta << gets.chomp.to_i
  end

  def remueve_pregunta(borrar)
    @categoria_pregunta.delete_at(borrar)
    @lista_preguntas.delete_at(borrar)
    @lista_respuestas.delete_at(borrar)
    @resp_correcta.delete_at(borrar)
  end

  def agrega_categoria(cat)  
    @lista_categorias << cat
  end

  def list_cat
    puts
    @lista_categorias.each_with_index do |val,index|
      puts "#{index + 1} : #{val} "
    end
    puts
  end
  
  def list_preg
    size = @lista_preguntas.size
      for a in 0..size - 1
        puts " #{a} - #{@lista_preguntas[a]}"
        end
  end

  def imprime_listados
    puts "Listar preguntas por categorias"
		list_cat
    puts 
    puts "Sobre que categoria desea listar las preguntas ?"
    puts
    selection = (gets.chomp.to_i) - 1
    size = @categoria_pregunta.size
    puts "Preguntas disponibles en la categoria: #{@lista_categorias[selection]}"
    for a in 0..size - 1
        check = @categoria_pregunta[a]
        if selection == check then puts @lista_preguntas[a]
          end
      end
    puts
  end

  def juego_trivia
    puts " Vamos a jugar..."
    puts
    puntaje = 0
    size = @categoria_pregunta.size
    for a in 0..size -1
      puts
      puts "PREGUNTA"
      puts "--------"
      puts @lista_preguntas[a]
      puts
      puts "Las opciones son:"
      puts @lista_respuestas[a]
      puts
      puts "Cual es la respuesta correcta ?"
      respuesta = gets.chomp.to_i
      puts
        if respuesta == @resp_correcta[a] then puts " CORRECTO  :) "
          puntaje += 10
        else puts "Respuesta INCORRECTA :( "
        end  
      end
      puts
      puts " Esas fueron todas las preguntas cargadas en la Trivia..."
      puts " Su score fue de: #{puntaje} puntos"
      puts
  end

end

  def menu_principal
    puts "1 - Agregar pregunta de la Trivia"
    puts "2 - Remover pregunta de la Trivia"
    puts "3 - Imprime la lista de preguntas"
    puts "4 - Muestra las categorias cargadas"
    puts "5 - Agregar categoria"
    puts "6 - Jugar a la TRIVIA"
    puts "7 - Salir"
  end


######   MAIN PROGRAM   ######
@objeto = Pregunta.new
loop do
	menu_principal
  selected_option = gets.chomp
	case selected_option
    when "1"
      @objeto.agrega_pregunta
    when "2"
      puts "Le muestro las preguntas disponibles para remover"
      @objeto.list_preg
      puts "Que pregunta desea borrar ?"
      borra_preg = gets.chomp.to_i
      @objeto.remueve_pregunta(borra_preg)

    when "3"
      @objeto.imprime_listados
    when "4"
      puts "Estas son las categorias ya cargadas"
	    @objeto.list_cat
    when "5"
      puts "Ingrese el nombre de la categoria nueva"
      new_category = gets.chomp
      @objeto.agrega_categoria(new_category)
    when "6"
      @objeto.juego_trivia
    when "7"
	    puts "Hasta luego, gracias por usar Trivia !!!"
      break
    else
      puts "Ingrese una opcion valida :)"
  end
end