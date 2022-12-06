# Escribir una clase Cuenta Corriente, con las siguientes características:
# a. Obtener el saldo
# b. Debitar un monto
# c. Acreditar un monto

class Cuenta_corriente
  def initialize(value)
    @value = value
  end

  def saldo
    puts "Su saldo es #{@value}"
  end

  def debito(x)
    @value -= x 
    puts "Debitando ese valor su saldo es #{@value}"
  end

  def credito(x)
    @value += x
    puts "Acreditando ese valor su saldo es #{@value}"
  end
end

puts "Ingrese el monto inicial para su cuenta"
value = gets.to_f
monto = Cuenta_corriente.new(value)
monto.saldo

puts "Monto a debitar"
x = gets.to_f
monto.debito(x)

puts "Monto a acreditar"
x = gets.to_f
monto.credito(x)