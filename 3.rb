a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]
d = []

for i in 0..2
	d << a[i]
	d << b[i]
	d << c[i]
end

puts d