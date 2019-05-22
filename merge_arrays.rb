def merge_arrays(a, b)
	results = []
	counter = 0
	if a.length > b.length
		for el in a 
			results << el
			if b[counter]
				results << b[counter]
				counter += 1
			end
		end
	else
		for el in b 
			if a[counter]
				results << a[counter]
				counter += 1
			end
			results << el
		end
	end
	return results
end

# test cases
# puts merge_arrays([1, 2, 3, 4, 5], ["a", "b", "c",])
# puts merge_arrays([1, 2, 3, 4, 5], ["a", "b", "c", "d", "e"])