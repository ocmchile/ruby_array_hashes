a = [1,2,1,3,2,1,4,7,1,2]

a.each_with_index { |e, i| puts "El elemento #{e} está en la posición #{i}" if e == i }