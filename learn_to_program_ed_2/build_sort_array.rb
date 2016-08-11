# w/o sorting method:

def sort some_array
	recursive_sort(some_array, [])
end

def recursive_sort unsorted_array, sorted_array
	last_index = unsorted_array.length - 1
	
	until unsorted_array.empty? == true
		(0..last_index).each do |i|
			if i == unsorted_array.index(unsorted_array.min)
				sorted_array << unsorted_array.delete_at(i)
			end
		end
	end
	
	sorted_array
end

# driver code

unsorted_array = ["b","d","a","g","y","m","a","b"]
correctly_sorted_array = unsorted_array.sort
sorted_array = sort(unsorted_array)

if correctly_sorted_array == sorted_array
	# works
	puts "This program matches the built-in method."
else
	# doesn't work
	puts "This program does not match the built-in method."
end



# ---------------------------------------------
# w/ sorting method:

# words = []
# loop do
# 	puts "Type a word:"
# 	input = gets.chomp
# 	if input == ""
# 		break
# 	else
# 		words << input
# 		words.sort!
# 		puts "-----------"
# 		puts words.join(', ')
# 		puts "-----------"
# 	end
# end