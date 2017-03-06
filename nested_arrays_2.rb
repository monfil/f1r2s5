def gato
	muestra = ['X', 'O']
	array = Array.new(3)
	gato = Array.new(3) { |a|
		for i in 0..2
	 		array[i] = muestra[rand(0..muestra.length - 1)]
	 	end
	 	p array
	 	a = array
	}

end

p gato





	
	# 	for i in 0..2
	# 		array[i] = muestra[rand(0..muestra.length - 1)]
	# 	end
	# 	array
	# 	p array
	# }









	# p gato
	# for x in 0..2
	# 	for i in 0..2
	# 		array[i] = muestra[rand(0..muestra.length - 1)]
	# 	end
	# 	p array
	# 	gato << array
	# end
	# gato
