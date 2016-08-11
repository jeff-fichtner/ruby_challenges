# w/o sorting method:

def sort some_array
	recursive_sort(some_array, [])
end

def recursive_sort unsorted_array, sorted_array

	until unsorted_array.empty? == true
		rand_numb = rand(unsorted_array.length)
			if unsorted_array[rand_numb] != nil
				sorted_array << unsorted_array.delete_at(rand_numb)
			end
		
	end
	
	sorted_array
end

unscrambled = ['a','b','c','d','e','f']
p unscrambled
scrambled = sort(unscrambled)
p scrambled



# loop until no letters in unscrambled array
	
# 	make a random number:
# 		if number as index in array is valid
# 			delete letter at that index, place in new array
# 		end if

# end loop