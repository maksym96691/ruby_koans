# Triangle Project Code.
require 'set'
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
 raise TriangleError if a <= 0 && b <= 0 && c <= 0 || a >= b + c || b >= a + c || c >= a + b
 triangle_set = [a, b, c].to_set
 set_size = triangle_set.size
 if set_size == 1
  return :equilateral
 elsif set_size == 2
  return :isosceles
 else
  return :scalene
 end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
