class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

 def self.marklar(str)
	str.gsub!(/\b[A-Z]{1}[a-z]{4,}\b/, "Marklar")
	str.gsub!(/\b[a-z]{5,}\b/, "marklar")
	return str
 end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  
 def self.even_fibonacci(nth)
	even_sum = 0
	f = [1, 1]
	len = f.length
	
	while f.length < nth 
		newnumber = ( f[ (f.length) - 2 ].to_i + f[ (f.length) -1 ].to_i  )
		f.append(  newnumber )
 		if f[ (f.length) - 1 ].to_i.even? then
 			even_sum += f[ (f.length) - 1 ].to_i
 		end
	end

	return even_sum
 end

end #end class Execise

