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
	array.sort!
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
	return w1 << " " << w2
end

def valid_parantheses?(s)
	"""
	This function takes an input string which contains different types of brackets and returns true if the brackets are matched.

	"""	
	return false if s.length < 2
    brackets_hash = {"(" => ")", "{" => "}", "[" => "]"}
    brackets = []
    s.each_char do |x|
      brackets.push(x) if brackets_hash.keys.include?(x)
      brackets.pop if brackets_hash.values.include?(x)
    end
    return brackets.empty?
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



array = [1,2,3,4,5]
double_elem([0,4,6,8,20])

puts missing_num([])
puts check_product?([1,2,6,8,10],120)
puts concatenate_words("Saurabh", "Labde")
puts valid_parantheses?("{()}")
puts longest_common_prefix(["Saurabh","Simran"])

class Student 
	attr_accessor :name, :arrival_time_at_classroom
	def initialize(name, arrival_time_at_classroom)
		raise ArgumentError.new("Name must not be nil") if name == nil or name == " " 
		raise ArgumentError.new("Arrival time must not be nil") if arrival_time_at_classroom == nil
		raise ArgumentError.new("Arrival time not entered in the correct format") unless arrival_time_at_classroom =~ /(\d{2}:\d{2})\s(am|pm)/

		@name = name
		@arrival_time_at_classroom = arrival_time_at_classroom
	end

	def arrive_on_time_for_class?
		if @arrival_time_at_classroom =~ /(0[1-7]):([0-9]{2})\s(am)/
			return true
		elsif @arrival_time_at_classroom =~ /(08):(0{2})\s(am)/
			return true
		else
			return false
		end
	end
end	

s1 = Student.new("Bob", "08:00 am")
puts s1.arrive_on_time_for_class?



