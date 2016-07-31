def seconds_to_years seconds
	seconds_in_years = seconds / 60 / 60 / 24 / 365
	p "#{seconds} seconds is #{seconds_in_years} years."
end

seconds_to_years(1025000000)
seconds_to_years(800000000)