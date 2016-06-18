a = [[1,"azul"],[2,"verde"],[3,:rojo]]
b = []

a.each do |e|
	e[0].times do
		b << e[1]
	end
end

print b