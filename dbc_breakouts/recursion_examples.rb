# reverse iteration
def reverse_iteratively word
  reversed_word = ""
  word.chars.each { |char| reversed_word.prepend(char) }
  reversed_word
end

# palindrome iteration
def palindrome_iteratively? word
  if word == reverse_iteratively(word)
    return true
  end
  false
end

# reverse recursion
def reverse_recursively word
	return word if word.length <= 1
	reversed_word = ""
	reversed_word << word[-1] + reverse_recursively(word[0..-2])
end

# palindrome recursion
def palindrome_recursively? word
	return true if word.length <= 1
	word[0] == word[-1] && palindrome_recursively?(word[1..-2])
end


non_palindrome = 'reverse'
palindrome = 'racecar'

puts "non_palindrome: reverse; palindrome: racecar\n"

puts "\nReverse iteratively:"
p reverse_iteratively(non_palindrome)
p reverse_iteratively(palindrome)

puts "\nPalindrome? iteratively:"
p palindrome_iteratively?(non_palindrome)
p palindrome_iteratively?(palindrome)

puts "\nReverse recursively:"
p reverse_recursively(non_palindrome)
p reverse_recursively(palindrome)

puts "\nPalindrome? recursively:"
p palindrome_recursively?(non_palindrome)
p palindrome_recursively?(palindrome)
