# Hacer un programa que nos permita introducir 15 números por teclado y que haga su sumatoria. Al final, deberá mostrar el resultado, el mayor y el menor de los 15 números ingresados.


numeros = []
sumatoria = 0
max = 0
min = 0

puts "Por favor, Ingrese 15 numeros"
for i in 0..14
  numeros[i] = gets.chomp.to_i
end

min = numeros[1] #Esto asegura por lo menos que el numero mas chico no sea el 0 declarado por defecto.
max = numeros[1] #Esto asegura por lo menos que el numero mas chico no sea el 0 declarado por defecto.

for i in 0..14
  sumatoria = (sumatoria + numeros[i])
  if min > numeros[i]
    min = numeros[i]
  end
  if max < numeros[i]
    max = numeros[i]
  end
end


puts
puts "La sumatoria de los numeros ingresados da: #{sumatoria}"
puts "El numero mas chico ingresado fue: #{min}"
puts "El numero mas grande ingresado fue: #{max}"