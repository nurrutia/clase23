hash = {"x":1, "y":2}

#agregar :z = 3
hash[:z] = 3
#cambiar el valor de :X
hash[:x] = 5
puts hash
puts ""
#eliminar :y
hash.delete(:y)
puts hash
#recorre el hash si la key (se tiene que pasar a string) es igual a z mostrar yeaah
hash.each do |key, value|
	if key.to_s == "z"
		print "yeaah"
	end
end
puts ""
#invertir key por value
puts hash.invert

