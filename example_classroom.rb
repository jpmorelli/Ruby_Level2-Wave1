
require 'byebug'
class Classroom
	attr_accessor :name

	def initialize(name,limit)
	  @name = name
	  @students = []
	  @classroom_limit = limit
	end

	def add_student(student)
		raise "Ud a superado el límite de alumnos" if @students.size == @classroom_limit
		@students << student
		byebug
	end

	def list_students_name
		@students.each do |s|
			puts s.name
		end
	end

	def age_average
		age_temp = 0
		@students.each do |s|
			age_temp += s.age
		end
		age_temp/@students.size
	end

	def remove_student(name)
		@students.delete_if {|s| s.name == name }
	end
end

class Student
	attr_accessor :name, :age

	def initialize(name, age)
	  @name = name
	  @age = age
	end
end



## Main Program Methods ##
def add_student
	puts "Ingrese un nombre del Alumno"
	name = gets.chomp
	puts "Ingrese edad del Alumno"
	age = gets.chomp.to_i
	student = Student.new(name,age)
	@classroom.add_student(student)
end

def add_students
	puts "¿Cuántos alumnos desea agregar al curso?"
	cant_alumnos = gets.chomp.to_i
	cant_alumnos.times do
		add_student
	end

end

def display_options
	puts "Seleccione una opción: "
	puts "1 - Agregar alumnos"
	puts "2 - Remover alumno"
	puts "3 - Listar alumnos"
	puts "4 - Calcular promedio de edad"
	puts "5 - Salir"
end

def remove_student
	puts "Ingrese el nombre del alumno a remover: "
	name = gets.chomp
	@classroom.remove_student(name)
end

### Main Program  ###
puts "Ingrese un nombre de curso:"
classroom_name = gets.chomp
puts "Ingrese el limite de alumnos que aceptara en el curso:"
limit = gets.chomp.to_i
@classroom = Classroom.new(classroom_name,limit)



loop do
	display_options
	selected_option = gets.chomp

	case selected_option
	when "1"
	  add_students
	when "2"
	  remove_student
	when "3"
	  puts "Listando los alumnos del curso #{@classroom.name}"
		@classroom.list_students_name
	when "4"
		puts "El promedio de edad del curso es #{@classroom.age_average} años"
	when "5"
	  puts "Saliendo"
	  break
	else
	  puts "Por favor ingrese una opción valida."
	end


end
