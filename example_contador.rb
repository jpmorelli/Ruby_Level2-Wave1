#!/usr/bin/env ruby

# Escribir una clase que permita modelar un Contador, con las siguientes características: 
# a. Obtener valor actual
# b. Incrementar el valor en 1
# c. Decrementar el valor en 1
# d. Incrementar el valor en x
# e. Decrementar el valor en x
# f. Asignar un valor inicial al contador

class Contador
  attr_reader :number
  # attr_writer :number
  #attr_accessor :number

  def initialize(initial_value = 0)
    validate_supported_type(initial_value)
    @number = initial_value
  end

  def increment(x = 1)
    @number += x
  end

  def decrement(x = 1)
    @number -= x
  end

  def number=(value)
    validate_supported_type(value)
    @number = value
  end

  private

  def validate_supported_type(value)
    raise "Tipo de datos no soportado" unless value.is_a? Numeric
  end
end


# c = Contador.new(1)
# c.number # => 1

class Contador2
  def initialize(initial_value)
    @value = initial_value
  end

  def decrement
    @value -= 1
  end

  def increment
    @value = @value + 1
  end

  def increment_x(x)
    @value += x
  end

  def decrement_x(x)
    @value -= x
  end

  def value
    @value
  end
end