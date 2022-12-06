
preguntas = { "Cine" => "Hola k ace", "Cine" => "Chau loco", "Deporte" => "CHupala!"}

puts preguntas
puts preguntas.select { |key| key.to_s.match(/Cine+/) }