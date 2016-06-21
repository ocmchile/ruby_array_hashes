restaurant_menu = { "Ramen":3, "Dal Makhani":4, "Coffee":2 }

def expensive(hash)
	hash.max_by { |k, v| v }[0]
end

def cheap(hash)
	hash.min_by { |k, v| v }[0]
end

def average(hash)
 	hash.map { |e| e[1] }.inject(:+) / hash.size
end

def menu(hash)
	hash.map { |e| e[0] }
end

def prices(hash)
	hash.map { |e| e[1] }
end

def tax_included(hash, iva = 1.19)
	hash.each { |k, v| hash[k] *= iva }
end

def discount(hash, mult = 0.8)
	hash.each { |k, v| hash[k] *= mult if k.to_s.split(" ").length > 1}
end

puts "El plato más caro del menú es #{expensive(restaurant_menu)}"
puts "El plato más barato del menú es #{cheap(restaurant_menu)}"
puts "El promedio de valores de los platos es #{average(restaurant_menu)}"
puts "Los platos del menú son: #{menu(restaurant_menu)}"
puts "Los valores de los platos son: #{prices(restaurant_menu)}"
puts "El menú con impuestos es: #{tax_included(restaurant_menu)}"
puts "El menú con descuentos es: #{discount(restaurant_menu)}"