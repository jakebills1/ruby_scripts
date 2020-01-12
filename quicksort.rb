require 'pry'
# quicksort psuedocode
# for unsorted array:
#   1. choose a pivot
#   2. move pivot to end of array
#   3. scan through array from left and find the first value larger than pivot, and save it as itemFromLeft
#   4. scan through array from right and find the first value smaller than pivot and save it as itemFromRight
#   5. swap itemFromLeft with itemFromRight
#   6. repeat this process until index of itemFromLeft > index of itemFromRight
#   7. swap itemFromLeft and pivot
#   8. chooose a new pivot and repeat steps 1 through 7


module QuickSort
  def isSorted(arr)
    return arr == arr.sort
  end
end

class Sort
  include QuickSort 

  @arr
  @pivot
  @itemFromLeft
  @itemFromRight

  def initialize(arr)
    @arr = arr
  end

  def quicksort
    @pivot = choosePivot
    while !isSorted(@arr)
      getItemFromLeft
      getItemFromRight
      if @arr.index(@itemFromLeft) < @arr.index(@itemFromRight)
        swapLeftAndRight
      else 
        swapLeftAndPivot
        @pivot = choosePivot
      end
      
    end 
    return @arr
  end

  private

  def choosePivot
    # chooses pivot and moves to end of @arr
    @pivot = @arr.sample
  end

  def getItemFromLeft
    # gets item from left larger than pivot
    @itemFromLeft = @arr.first
    counter = 0
    while @itemFromLeft < @pivot
      counter += 1
      @itemFromLeft = @arr[counter]
    end
  end

  def getItemFromRight
    # gets first el from right smaller than pivot
    @itemFromRight = @arr[@arr.size - 1]
    counter = @arr.size - 1
    while @itemFromRight > @pivot
      counter -= 1
      @itemFromRight = @arr[counter]
    end
  end

  def swapLeftAndRight
    indexLeft = @arr.index(@itemFromLeft)
    indexRight = @arr.index(@itemFromRight)
    tmp = @arr[indexLeft]
    @arr[indexLeft] = @arr[indexRight]
    @arr[indexRight] =  tmp
  end

  def swapLeftAndPivot
    indexLeft = @arr.index(@itemFromLeft)
    indexPivot = @arr.index(@pivot)
    tmp = @arr[indexLeft]
    @arr[indexLeft] = @arr[indexPivot]
    @arr[indexPivot] = tmp
  end

   
end

sort = Sort.new([2,1,3,4,5,6,7,8])

# puts sort.quicksort

sort2 = Sort.new([2,6,5,3,8,7,1,0])

puts sort2.quicksort
