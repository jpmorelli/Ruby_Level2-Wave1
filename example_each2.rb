calificaciones = %w[10 9 7 5 9 7 8 6 0 8 9 6 8 0 7]

suma = 0 

calificaciones.each do |calificacion|
	puts " esta la calificacion: #{calificacion}"
	suma += calificacion.to_i
	end

puts " El promedio de tus calificaciones es de: #{suma / calificaciones.size}"