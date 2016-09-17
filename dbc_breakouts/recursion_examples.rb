# reverse iteration
def reverse_iteratively word
  reversed_word = []
	last_index = word.length - 1

  word.chars.each_with_index do |char, i| 
  	reversed_word[last_index - i] = char
  end

  reversed_word.join
end

# palindrome iteration
def palindrome_iteratively? word
	last_index = word.length - 1

	last_index.times do |i|
		if (word[i] != word[last_index - i] || i > last_index)
			return false
		end
	end

	true
end

# reverse recursion
def reverse_recursively word
	return word if word.length <= 1

	reversed_word = ""
	last_letter = word[-1]
	rest_of_word = word[0..-2]

	reversed_word << last_letter + reverse_recursively(rest_of_word)
end

# palindrome recursion
def palindrome_recursively? word
	return true if word.length <= 1

	first_letter = word[0]
	last_letter = word[-1]
	rest_of_word = word[1..-2]

	first_letter == last_letter && palindrome_recursively?(rest_of_word)
end

#binary_search
def binary_search number, array, start = 0, finish = array.length - 1
  middle = (start + finish) / 2

  return nil if start > finish
  return middle if array[middle] == number

  if number > array[middle]
    start = middle + 1
  else
    finish = middle - 1
  end

  binary_search(number, array, start, finish)
end


# array = [4,6,9,12,15,17,20]
# p binary_search(9, array)


# non_palindrome = 'reverse'
# palindrome = 'racecar'

# puts "non_palindrome: reverse; palindrome: racecar\n"

# puts "\nReverse iteratively:"
# p reverse_iteratively(non_palindrome)
# p reverse_iteratively(palindrome)

# puts "\nPalindrome? iteratively:"
# p palindrome_iteratively?(non_palindrome)
# p palindrome_iteratively?(palindrome)

# puts "\nReverse recursively:"
# p reverse_recursively(non_palindrome)
# p reverse_recursively(palindrome)

# puts "\nPalindrome? recursively:"
# p palindrome_recursively?(non_palindrome)
# p palindrome_recursively?(palindrome)
