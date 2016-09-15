# reverse iteration
def reverse_iteratively word
  reversed_word = []
  word.chars.each { |char| reversed_word.unshift(char) }
  reversed_word.join
end

# palindrome iteration
def palindrome_iteratively word
  if word == reverse_iteratively(word)
    return true
  end
  false
end

# reverse recursion
def reverse_recursively word
end

# palindrome recursion
def palindrome_recursively word
end


word = 'reverse'

p reverse_iteratively(word)
p palindrome_iteratively(word)
