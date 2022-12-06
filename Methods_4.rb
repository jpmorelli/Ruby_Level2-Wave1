# Hacer un programa que le pida al usuario el nombre y nota de los alumnos y muestre en pantalla una lista de sus nombres y si aprobaron o no. La nota con la que se aprueba es un 7. Se deberá solicitar alumnos hasta que la nota ingresada sea -1. Al final, se deberá mostrar cuantos alumnos aprobaron, cuantos desaprobaron, quien fue el mejor alumno y la nota promedio del alumnado

#alumno = []
#nota = []
#i = 0
#sale = 1
#
#while sale != -1 do
#  puts "Ingrese el nombre del alumno"
#  alumno[i] = gets.chomp
#  puts "Ingrese la nota del alumno"
#  nota[i] = gets.to_i
#  sale = nota [i]
#  i +=1
#end

#for x in 1..i
#  puts alumno[i],nota[i]
#end

notas = {
  "Carlos Eduardo Monti" => 4,
  "DIego Tabares" => 5,
  "Nicolas Nappe" => 5
}

#Tambien puede cargarse de la siguiente manera.
# alumnos =['Charlie','Diego','Nico,']
# notas = [ 4,5,6]

nombre_alumno = gets.chomp
nota = gets.chomp.to_f


notas.each do [alumno, nota]
  puts "El alumno #{alumno} se saco la nota #{nota}"
end

mejores_alumnos = []
mejor_nota = notas.values.max

notas each. do [alumno, nota]
  mejores_alumnos << alumno if nota == mejor_nota
end

mejores.alumnos.each do [alumno]
  puts "#{alumno} se saco la nota mas alta"
end