a = []

20.times do
	a << rand(20)
end

puts a.select { |e| e > 10 }