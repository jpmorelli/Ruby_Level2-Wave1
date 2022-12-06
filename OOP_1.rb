#!/usr/bin/env ruby

# Escribir una clase que permita modelar un Contador, con las siguientes características: 
# a. Obtener valor actual
# b. Incrementar el valor en 1
# c. Decrementar el valor en 1
# d. Incrementar el valor en x
# e. Decrementar el valor en x
# f. Asignar un valor inicial al contador

class Contador
 
  def initialize(value)
    @number = value
  end

  def inc1
    result = @number + 1
    puts "Incrementando el valor en 1 al numero inicial da: #{result}"
  end

  def dec1
    result = @number -1
    puts "Decrementando el valor en 1 al numero inicial da: #{result}"
  end

  def increment(x)
    result = @number + x
    puts "Sumando #{x} al numero original da: #{result}"
  end

  def decrement(x)
    result = @number - x
    puts "Restando #{x} al numero original da: #{result}"
  end

  private
  def validate_supported_type(value)
    raise "Tipo de datos no soportado" unless value.is_a? Numeric
  end
end

puts "Ingrese el numero inicial"
value = gets.to_i
operacion = Contador.new(value)
operacion.inc1
operacion.dec1

puts " Ingrese un numero cualquiera para sumar y restar al original"
x = gets.to_i
operacion.increment(x)
operacion.decrement(x)
