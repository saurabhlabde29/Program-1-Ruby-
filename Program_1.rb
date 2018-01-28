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
	result = 0
	return false unless array.length >= 3
	(0 .. array.length-3).each do |x|
		(x+1 .. array.length-2).each do |y|
			(y+1..array.length-1).each do |z|
				if (array[x] * array[y] * array[z]) == n
					result = 1
				else
					result = 0
				end
			end
		end
	end
	if result == 1
		return true
	else
		return false
	end
end

def concatenate_words(w1,w2)
	"""
	This function takes two inputs strings and concatenates the two strings and inserts a single space between them.

	"""
	w1 << " " << w2
end

def valid_parentheses?(s)
	"""
	This function takes an input string which contains different types of brackets and returns true if the brackets are matched.

	"""	
    return false if s.length.odd?

  	pairs = { '{' => '}', '[' => ']', '(' => ')' }

  	s.chars.each_with_object([]) do |bracket, stack|
    if pairs.keys.include?(bracket)
      stack << bracket
    elsif pairs.values.include?(bracket)
      return false unless pairs[stack.pop] == bracket
    else
      return false
    end
  end

  return true
end

def longest_common_prefix(s)
	"""
	This function takes an array of strings as an input and returns the longest string which is common in all the strings in an array.

	"""
	return '' if s.empty?
  	min, max = s.minmax
  	idx = min.size.times{ |i| break i if min[i] != max[i] }
  	return min[0...idx]
end


class Student 
	"""
	This class models each student having two attributes , i.e the name of the student and the time at which he came to class.

	"""
	attr_accessor :name, :arrival_time_at_classroom
	def initialize(name, arrival_time_at_classroom)
		"""
		Constructor for initializing the instance variables

		"""
		raise ArgumentError.new("Name must not be nil") if name == nil or name == " " 
		raise ArgumentError.new("Arrival time must not be nil") if arrival_time_at_classroom == nil
		raise ArgumentError.new("Arrival time not entered in the correct format") unless arrival_time_at_classroom =~ /(\d{2}:\d{2})\s(am|pm)/

		@name = name
		@arrival_time_at_classroom = arrival_time_at_classroom
	end

	def arrive_on_time_for_class?
		"""
		This function returns true if the student arrived at the class on time or returns false.

		"""
		if @arrival_time_at_classroom =~ /(0[1-7]):([0-9]{2})\s(am)/
			return true
		elsif @arrival_time_at_classroom =~ /(08):(0{2})\s(am)/
			return true
		else
			return false
		end
	end
end	


