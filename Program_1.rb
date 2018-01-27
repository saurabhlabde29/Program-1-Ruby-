def double_elem(array)
	"""
	This function takes an input array and returns another array which doubles the elements of an input array
	
	"""
	array_double = array.map { |a| a*2 }
end

def missing_num(array)
	"""
	This function takes an input array and returns the missing number from the array
	
	"""
	sum = 0
	sum_actual = 0
	if array == []
		return 0
	else
	(array.min..array.max).each {|x| sum += x}
	array.each{|element| sum_actual += element}
    end
	if sum == sum_actual
		return array.max + 1
    else
    	return sum - sum_actual
    end

end 

def check_product?(array,n)

"""
	This function takes two inputs, an array and an integer and returns true if it finds any three numbers such that the product is n
	
"""
	#count = 0
	array.sort!
	return false unless array.length >= 3
	(0 .. array.length-2).each do |x|
		(x+1 .. array.length-1).each do |y|
			(y+1..array.length).each do |z|
				if (array[x] * array[y] * array[z]) == n
					return true
				else
					return false
				end
			end
		end
	end
		
end

def concatenate_words(w1,w2)
	"""
	This function takes two inputs strings and concatenates the two strings and inserts a single space between them.

	"""
	return w1 << " " << w2
end


array = [1,2,3,4,5]
double_elem([0,4,6,8,20])

puts missing_num([])
puts check_product?([1,2,6,8,10],120)
puts concatenate_words("Saurabh", "Labde")


