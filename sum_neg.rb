def sum_neg(arr)
    results = []
    if arr != []
        results = [0, 0]
        for n in arr
            if n > 0 
                results[0] += 1
            else
                results[1] += n 
            end
        end
    end
    return results
end

# test case
puts sum_neg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])
puts sum_neg([]) 