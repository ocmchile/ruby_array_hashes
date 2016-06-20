feriados = ["Lunes 10", "Jueves 13", "Miércoles 19", "Jueves 20", "Lunes 31"]
findesemana = ["Sábado ", "Domingo"]

def guardar_dias(lunes)
	dias = []
	semana = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"]
	d = 0

	for i in lunes..31
		dias << "#{semana[d]} #{i}"
		d == semana.length-1 ? d = 0 : d += 1
	end

	dias
end

result = guardar_dias(3)

print result.reject { |e| feriados.include? e }
print result.reject { |e| feriados.include? e }.reject { |e| findesemana.include? e[0..6] }