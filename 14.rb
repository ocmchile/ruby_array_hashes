arr01 = [[2,3],[3,4],[3,3]]
element = []
arr02 = []
arr03 = []
matches = 0

def num_couple()
	arr = []
	while arr.length < 2
		puts "Ingrese un número:"
		num = gets.chomp.to_i
		if (num.class == Fixnum)
			arr << num
		end
	end
	arr
end

def compare(arr01, arr02)
	count = 0
	arr01.each_with_index do |e, i|
		if (e == arr02[i])
			count += 1
		end
	end
	count
end

def shuffle_couple()
	arr = []
	while arr.length < 2
		arr << rand(0..5)
	end
	arr
end

3.times do
 	element = num_couple()
 	arr02 << element
end

matches = compare(arr01.flatten, arr02.flatten)
puts "Tienes #{matches} coincidencias"

3.times do
 	element = shuffle_couple()
 	arr03 << element
end

puts "Nueva flota: #{arr03}"