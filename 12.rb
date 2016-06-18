a = [1,2,3,4,5,6,7,8]
b = []
c = []

a.each do |e|
	b << e
	if b.length == 2
		c << b
		b = []
	end
end

print c