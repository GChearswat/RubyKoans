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
  # WRITE THIS CODE
  if a == 0 or b == 0 or c == 0
      raise TriangleError, "No sides of a triangle should be 0"
  elsif a < 0 or b < 0 or c < 0
      raise TriangleError, "No side of a triangle should be negative"
  end

  triangle_array = [a, b, c]
  sorted_triangle_array = triangle_array.sort
  if !((sorted_triangle_array[0] + sorted_triangle_array[1]) > sorted_triangle_array[2])
       raise TriangleError, "Not a valid triangle size"
  end


  if (a == b and b == c and c == a)
       return :equilateral
  elsif (a == b || a == c || c == b)
       return :isosceles
  elsif a != b and a != c and c != b
       return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
