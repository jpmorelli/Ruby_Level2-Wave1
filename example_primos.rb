# Busca numeros primos hasta el numero que uno ingresa

puts"Ingrese el número hasta donde quiere buscar primos"
numero=gets.to_i

for i in 1..numero
  x=i
  contador=0
  for x in 1..i
    if i%x ==0
    contador =contador +1
    end
  end

  if contador >2
    # puts "no es primo"
  else
    puts x
  end
end
