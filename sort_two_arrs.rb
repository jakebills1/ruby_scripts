# merges two sorted arrays of equal size, with no duplicates
def sort_two_arrs(arr1, arr2)
  # initialize results array and iterator
  arr3 = []
  counter = 0
  # iterate over first arr, comparing it to corresponding element in next arr.
  # if el1 < el2, put el1 in arr, then el2. vv
  for el in arr1
     if el < arr2[counter]
      arr3 << el
      arr3 << arr2[counter]
     else
      arr3 << arr2[counter]
      arr3 << el
     end
     counter += 1
  end
  return arr3 
end