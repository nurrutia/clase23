
  hash = [{ :firstname => "Diego", :country => "Chile", :continent => "south america", :gender => "M" },
  		  { :firstname => "Juan", :country => "Peru", :continent => "south america", :gender => "M" },
		  { :firstname => "Pedro", :country => "Colombia", :continent => "south america", :gender => "F" },
		  { :firstname => "Federico", :country => "EEUU", :continent => "north america", :gender => "M" },
		  { :firstname => "Marcelo", :country => "Rusia", :continent => "Europe", :gender => "F" },
		  { :firstname => "Pepito", :country => "Italia", :continent => "Europe", :gender => "M" },
		  { :firstname => "Joel", :country => "Bolivia", :continent => "South america", :gender => "F" },
		  { :firstname => "Dario", :country => "Brasil", :continent => "south america", :gender => "M" }]


#Crear el array de hashes y pobarlo con al menos 8 personas:
puts hash.length
# Generar un array con cada continente, eliminar repeticiones, considerar que pueden haber nombres escritos con mayúscula y minúscula.
continentes = []
hash.each do |key, value|
	continentes << key[:continent].capitalize
end
	puts continentes.uniq

#Generar una lista con todas las personas llamadas pedro	

hash.each do |key|
	if key[:firstname].to_s == "Pedro"
		puts "si hay #{key[:firstname]}"
	end	
end

#Hacer dos listas de personas, una por cada género 
masculino = []
femenino = []
hash.each do |key|
	if key[:gender].to_s == "M"
		masculino << key
	elsif key[:gender].to_s == "F"
		femenino << key
	end
	
end
 puts femenino
 puts masculino


#6. Armar un hash, donde cada clave sea un continente y el value un array con los países de cada continente

=begin=endcontinentes = [{:paises => "Chile", :continentes => "south america"}]
paises = []
hash.each do |key, value|
	if key[:continent].to_s
		continentes << key
	end
	if key[:country].to_s
		paises << value
	end
end





  




