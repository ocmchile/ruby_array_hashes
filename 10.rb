a = [1,2,3,[1,2,3],4,5,6,[1,2,3]]
b = []

def sum(arr)
	arr.inject { |sum, e| sum + e }
end

a.each do |e|
	if e.class == Array
		b << sum(e)
	end
end

print b