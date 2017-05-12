inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10,"Impresoras": 6}
opcion = 0
suma = 0
total = 0
puts "ingrese opcion"
opcion = gets.chomp.to_i
puts ""	

#opcion uno cambiar la cantidad de unidades de una de las key
if opcion == 1
	nombre = []
	puts "ingrese nombre producto y cantidad"
	a = gets.chomp.to_s
	nombre= a.split(',') 
	inventario[nombre[0].to_sym] = nombre[1]
	puts inventario
end

#suma el total de productos
if opcion == 2
	inventario.each do |key, value|
		suma = suma + value
	end	
		puts "la suma de productos es #{suma}"
end

#muestra el producto con la mayor cantidad de unidades
if opcion == 3
	
	puts inventario.max_by{|k,v| v}
	
end

#Si el nombre tiene una coincidencia con alguna key se muesta la palabra si
if opcion == 4
puts "ingrese nombre"
a = gets.chomp.to_s
	inventario.each do |key, value|
		if key.to_s == a
			puts "si"
		end	

	end
end