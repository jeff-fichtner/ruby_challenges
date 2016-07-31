def age_in_seconds age
	age_in_seconds = age * 365 * 24 * 60 * 60
	p "#{age} years is #{age_in_seconds} seconds."
end

age_in_seconds(5)