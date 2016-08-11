# w/o sorting method:


# primary algorithm
def dictionary_sort unsorted_array
	capitalize_array = uncapitalize_sort unsorted_array
	sorted_array = sort unsorted_array
	recapitalize_sort capitalize_array, sorted_array
end

def uncapitalize_sort unsorted_array
	capitalize_array = Array.new
	unsorted_array.each do |letter|
		if letter == letter.upcase
			capitalize_array << letter.downcase
			index = unsorted_array.index(letter)
			unsorted_array[index] = unsorted_array[index].downcase
		end
	end
	capitalize_array
end

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

def recapitalize_sort capitalize_array, sorted_array
	capitalize_array.each do |letter|
		index = sorted_array.index(letter)
		sorted_array[index] = sorted_array[index].upcase
	end
	sorted_array
end

# driver code

unsorted_array = ['b','a','H','e','s','U','h']
p unsorted_array
sorted_array = dictionary_sort unsorted_array
p sorted_array


# -----------------------------------------------------
# dictionary sort

# downcase to evaluate
# upcase to evaluate against it's own duplicates 
# 	(if adding that feature, uppercase first, lowercase last)
# separate flow from non-uppercase?

# ['a','B','y','b','h']

# store all upcase into third array as downcase
# sort normally
# iterate through third array, creating upcases

# uncapitalize_sort => sort => recursive sort => recapitalize