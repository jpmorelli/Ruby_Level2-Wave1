class Video
	attr_accessor :minutes, :title

	def play
	end

	def pause
	end

	def stop
	end

end

video_30_curso_ruby = Video.new
video_30_curso_ruby.title = "Objetos y clases"

puts video_30_curso_ruby.title

video_31_curso_ruby = Video.new
video_31_curso_ruby.title = "Atributos"

puts video_31_curso_ruby.title