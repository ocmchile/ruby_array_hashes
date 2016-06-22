require_relative "movies"

# helpers
def mode(array)
  counter = Hash.new(0)
  array.each do |i|
    counter[i] += 1
  end
  mode_array = []
  counter.each do |k, v|
    if v == counter.values.max
      mode_array << k
    end
  end
  if mode_array.length > 1
  	"regular"
  else
  	mode_array[0].to_s
  end
end

def format(hash)
	hash.map { |k, v| { k => v.map { |e| e[0] } } }
end

# Crear un arreglo con las peliculas del mismo genero.
def genre(hash)
	hash.group_by { |k, v| v[:genre] }
end

# Contar las peliculas de cada genero.
def genre_count(hash)
	hash.group_by { |k, v| v[:genre] }.map { |k, v| { k => v.count } }
end

# Crear un arreglo con las peliculas que su año se encuentre en un rango.
def year_range(hash, y1, y2)
	a = hash.select do |k, v| 
		anio = v[:realease_date][12..15].to_i
		anio >= y1 && anio <= y2
	end
	a.group_by { |k, v| v[:realease_date][12..15].to_i }
end

# Segun los votos decir si la pelicula fue: buena, mala, regular.
def ranking(hash)
	hash.map { |k, v| { k => mode(v[:votes]) } }
end

puts "Arreglo con películas del mismo género: #{format(genre(MOVIES))}"
puts "Número de películas del mismo género: #{genre_count(MOVIES)}"
puts "Películas del año: #{format(year_range(MOVIES, 2005, 2009))}"
puts "Ranking de películas: #{ranking(MOVIES)}"