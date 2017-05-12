restaurant_menu ={"Ramen"=>3,"Dal Makhani"=>4,"Coffee"=>2}
plato_caro = 0
restaurant_menu.each_value{|value| plato_caro = value if value > plato_caro}
puts plato_caro
#imprimir plato mas caro del menu
puts "El plato mas caro es : #{restaurant_menu.max_by{|k, v| v }[0]}"

#imprimir plato mas barato del menu
puts "El plato mas barato es: #{restaurant_menu.min_by{|k, v| v }[0]}"

#imprimir promedio de valores de los platos
avg = restaurant_menu.values.inject(&:+)/restaurant_menu.length
puts "el promedio de los valores de los platos son: #{avg}"
 
#Crear un arreglo con solo los nombres de los platos
puts "los nombres de los platos son:#{key_array = restaurant_menu.keys} " 

#5Crear un arreglo con solo los valores de los platos
puts "Los valores de los platos son : #{val_array = restaurant_menu.values}" 

#Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).

restaurant_menu.each_pair{|key, value| restaurant_menu[key]=value*1.19}
puts "los valores con IVA son : #{restaurant_menu}"
#Dar descuento del 20% para los platos que tengan un nombre de mas 1 una palabra
restaurant_menu.each{|key, value| restaurant_menu   value*0.8 if key.split(" ").length > 1}
puts restaurant_menu	





