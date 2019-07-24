# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError if a <= 0 || b <= 0 || c <= 0
  # error should raise is any value is zero/negative
  # error should raise is the sum of two sides is smaller than the largest side
  raise TriangleError if [a, b, c].sort[0..1].sum <= [a, b, c].max
  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c 
    :isosceles
  else
    :scalene
  end
end


# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
