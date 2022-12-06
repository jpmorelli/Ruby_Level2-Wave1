# Hacer un programa que lea las calificaciones de un alumno en 10 asignaturas, las almacene en un vector y calcule e imprima su promedio.



materias = ['Lengua', 'Matematica','Sociales','Naturales','Fisica','Quimica','Albegra','Filosofia','Ingles','Contabilidad']
nota = []
suma_notas = 0

for i in 0..9
  puts "Ingrese la nota que el alumno saco en #{materias[i]}"
  nota[i] = gets.chomp.to_i
  suma_notas = suma_notas + nota[i]
end


puts " MATERIAS = NOTA"
for i in 0..9
  puts "#{materias[i]} = #{nota[i]}"
end

puts
puts "PROMEDIO"
puts "El promedio del alumno fue de: #{suma_notas /10}"

