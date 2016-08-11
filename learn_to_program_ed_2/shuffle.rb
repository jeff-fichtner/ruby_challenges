# w/o sorting method:

def sort some_array
	recursive_sort(some_array, [])
end

def recursive_sort unscrambled_array, scrambled_array

	until unscrambled_array.empty? == true
		rand_numb = rand(unscrambled_array.length)
			if unscrambled_array[rand_numb] != nil
				scrambled_array << unscrambled_array.delete_at(rand_numb)
			end
		
	end
	
	scrambled_array
end

unscrambled = ['a','b','c','d','e','f']
p unscrambled
scrambled = sort unscrambled
p scrambled



# loop until no letters in unscrambled array
	
# 	make a random number:
# 		if number as index in array is valid
# 			delete letter at that index, place in new array
# 		end if

# end loop