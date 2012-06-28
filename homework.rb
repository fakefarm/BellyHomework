# create a method to remove duplicate numbers in an array. 
# Create a Ruby class 
# which behaves exactly like an array but will store only numbers, 
# will store them in the order they were added and when adding new elements will ignore any duplicates. 

# In this way it functions like a Ruby hash object in that each key has to be unique.

# Here's an example:
# # Creating an array from another array. Notice that only the first occurrence of the number 2 is kept
# UniqueArray.new([1,2,0,6,2,11]) 
# => [1,2,0,6,11]
# 
# # Creating an array by adding one element at a time
# m = UniqueArray.new()
# 
# [1,2,0,6,2,11].each do |new_element|
#   m.add(new_element)
# end
# 
# puts m
# => [1,2,0,6,11]
# Submit your ruby file containing the class you wrote. Also submit a test file which demonstrates how your class functions. You'll get bonus points if your test file uses the rSpec testing framework! ;)

class UniqueArray
	

	def initialize(input=nil)
		
		if input == nil
		else
			numbers = input
			numbers.select!{ |x| x.is_a? Integer }
			p numbers.uniq! 					
		end
	end
end
UniqueArray.new(["a", "b"]) 
UniqueArray.new([1,2,0,6,2,11]) 
UniqueArray.new() 
