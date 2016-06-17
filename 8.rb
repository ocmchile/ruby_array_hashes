a = "1,2,7,1,3,5,3.4,9,1"
b = []

b = a.split(",").map { |e| e.to_f }

print b

puts "Promedio: " + (b.inject { |sum, e| sum + e }.to_f / b.length).to_s

puts "Moda: " + (b.group_by { |e| e }.map { |k, v| [k, v.length] }.to_h.max_by { |k,v| v }[0]).to_s

# Moda => array.inject(Hash.new(0)) { |h, n| h[n] += 1; h }