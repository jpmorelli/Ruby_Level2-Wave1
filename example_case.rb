hora = 12

saludo = case
  when hora >= 0 && hora < 6 then "Hora de dormir"
  when hora > 6 && hora < 12 then "Buen dia" 
  when hora > 12 && hora < 19 then "Buenas tardes"
  when hora > 19 && hora <= 24 then "Buenas noches"
end

puts saludo