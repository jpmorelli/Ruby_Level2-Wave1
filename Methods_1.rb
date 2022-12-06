# Hacer un programa que nos permita introducir un numero por teclado y sobre el se realicen las siguientes operaciones: comprobar si es primo, hallar su factorial e imprimir su tabla de multiplicar.

def primo(num1)
  for x in 2..num1
      if num1 % x == 0
        return "El numero #{num1} no es un numero primo"
      else
        return "El numero #{num1} es un numero primo"
      end
  end
end

def factorial(num1)
    factorial = 1
    for i in 1..num1
      factorial = factorial * i
    end
    return "Su factorial es igual a : #{factorial}"
end

def tabla(num1)
  i=0
  while i < 11
    puts "#{num1} x #{i} = #{num1 * i}"
    i +=1
  end
end

puts "Introduzca un numero entero positivo"
numero=gets.chomp.to_i
puts
puts " -- El numero ingresado es: #{numero} --"
puts primo(numero)
puts
puts factorial(numero)
puts
puts tabla (numero)
puts