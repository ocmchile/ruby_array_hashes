alumnos = [{name:"Juan Cristobal", edad:17}, {name:"Belen", edad:21}]

def average(arr)
	avg = 0
	arr.each do |e|
		avg += e[:edad]
	end
	avg/arr.length
end

def younger(arr)
	age = 100
	young = {}
	arr.each do |e|
		if (e[:edad] < age)
			age = e[:edad]
			young = e
		end
	end
	young[:name]
end

puts "El promedio de edad del curso es: #{average(alumnos)}"
puts "El alumno más joven del curso es: #{younger(alumnos)}"