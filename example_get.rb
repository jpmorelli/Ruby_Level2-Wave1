# Dados los siguientes datos

# autos = 100
# lugares por auto = 4.0 # Sin conductor
# conductores = 30
# pasajeros = 90
# 
# Calcular utilizando nuevas variables:
# 
# Autos sin conductores
# Autos con conductores
# Cantidad maxima de pasajeros con toda la flota
# Pasajeros promedio por auto
# 
# Imprimir cada calculo interpolando las variables para obtener una salida con el formato de ej:
# 
# Hay 100 autos disponibles.
# Hay 30 conductores disponibles
# Hoy habra 70 autos vacios.
# Podemos transportar 120 personas hoy
# Tenemos 90 para carpool
# Necesitamos ubicar 3 personas por auto


#Autos = 100
#Conductores = 30
#Pasajeros = 90

Lugares = 4

puts "Ingrese cuantos autos hay disponibles"
Autos = gets.chomp.to_i
puts "Ingrese cuantos conductores hay disponibles"
Conductores = gets.chomp.to_i
puts "Ingrese la cantidad de pasajeros para llevar"
Pasajeros = gets.chomp.to_i

autos_sin_conductores = Autos - Conductores
autos_con_conductores = Conductores
max_pasajeros = autos_con_conductores * Lugares
pasajeros_prom = Pasajeros / autos_con_conductores

puts "Hay #{Autos} autos disponibles"
puts "Hay #{Conductores} conductores disponibles"
puts "Hoy abra #{autos_sin_conductores} autos vacios"
puts "Podemos transportar #{max_pasajeros} personas hoy"
puts "Tenemos #{Pasajeros} para carpool"
puts "Necesitamos ubicar #{pasajeros_prom} personas por auto"




