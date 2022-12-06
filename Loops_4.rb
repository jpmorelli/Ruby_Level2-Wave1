# Calcular el factorial de un número. (La multiplicación de todos los números desde 1 hasta sí mismo).

puts "Ingrese el numero para calcular su factorial"
numero = gets.to_i
for i in 1..numero
  numero = numero * i
end
puts numero
