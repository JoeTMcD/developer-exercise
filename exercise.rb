#!/usr/bin/ruby
class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

 def self.marklar(str) # WORKING!
	#puts "Marklar Input: #{str}"
	str.gsub!(/\b[A-Z]{1}[a-z]{4,}\b/, "Marklar")
	str.gsub!(/\b[a-z]{5,}\b/, "marklar")
	#puts "Marklar Out: #{str}"
	return str
 end





  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  
 def self.even_fibonacci(nth)
	# TODO: Implement this method
	puts "Input: #{nth}"
	count = 0
	sum = 0
	even_sum=0
	while count < nth 
		count += 1
		if count.even? then
			even_sum += count
		end
		sum += count

		puts("count = #{count} - sum = #{sum} - even_sum = #{even_sum}" )

	end
	puts "even_sum = #{even_sum}"
	return even_sum
 end


end #end class Execise
