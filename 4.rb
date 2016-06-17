a = [1,2,3]
b = [:azul, :rojo, :amarillo]
c = ["Tacos", "Quesadillas", "Hamburguesas"]
d = []

for i in 0..2
	d << a[i].to_s
	d << b[i].to_s
	d << c[i]
end

print d