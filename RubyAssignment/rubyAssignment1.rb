class Add
	def addAll(*numbers)
		sum = 0
		for i in 0..numbers.length-1
			puts "Doing sum of #{numbers[i]}"
			sum = sum + numbers[i]
		end
		puts "Sum is #{sum}"
		return sum
	end
end

addobject = Add.new

addobject.addAll(1,2,3,8,9)
