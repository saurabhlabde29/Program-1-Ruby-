def double_elem(array)
	"""
	This function takes an input array and returns another array which doubles the elements of an input array
	"""
	array_double = array.map { |a| a*2 }
end

def missing_num(array = [])
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
    endc
	if sum == sum_actual
		return array.max + 1
    else
    	return sum - sum_actual
    end

end 

def check_product?(array,n)
	


end



array = [1,2,3,4,5]
double_elem([0,4,6,8,20])

puts missing_num([])