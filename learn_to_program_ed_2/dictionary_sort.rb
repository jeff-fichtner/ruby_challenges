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

# dictionary sort

# downcase to evaluate
# upcase to evaluate against it's own duplicates 
# 	(if adding that feature, uppercase first, lowercase last)
# separate flow from non-uppercase?
