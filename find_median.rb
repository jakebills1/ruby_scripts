require "./sort_two_arrs"
def find_median(arr)
  # median is the middle element of a sorted list. if the list is even, it is the mean of the two middle elements
  middle_index = arr.length / 2
  median = arr.length % 2 == 0 ? ((arr[middle_index] + arr[middle_index - 1]) / 2.0) : arr[middle_index]
  puts median
end
find_median(sort_two_arrs([1, 3, 5], [2, 4, 6]))