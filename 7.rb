a = []

10.times do
	a << rand(100)
end

print a

puts a.inject { |sum, e| sum + e }.to_f / a.length