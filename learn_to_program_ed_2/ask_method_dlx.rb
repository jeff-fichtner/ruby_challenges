def ask question 
	while true
		puts question
		reply = gets.chomp.downcase
		
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end

	answer # This is what we return (true or false).
end