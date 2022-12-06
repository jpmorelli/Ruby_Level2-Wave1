class Video
	attr_accessor :title

	def play
	end

	def pause
	end
	
	def stop	
	end
end

video30 = Video.new
video30.title = "Pedro"

video31 = Video.new
video31.title = "Jose"


puts video30.title
puts video31.title