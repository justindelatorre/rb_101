=begin
A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be
greater than the length of the longest side, and all sides must have lengths
greater than 0: if either of these conditions is not satisfied, the triangle is
invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments,
and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending
on whether the triangle is equilateral, isosceles, scalene, or invalid.

Inputs:
- (3) numbers, either Integer or Float

Outputs:
- Symbol

Data Structure(s):
- Array, to hold number values of side lengths

Rules:
  Explicit:
  - Triangle's two shortest sides together must be greater than longest side
    - lengths[0] + lengths[1] > lengths[2], if elements are sorted
  - Method must return Symbol
  - :equilateral is if all lengths are the same
  - :isoceles is if (2) sides are the same and third is different
  - :scalene is if all (3) sides are different length
  Implicit:
  - Side values are always positive

Clarifications:
- How should the method handle invalid arguments, e.g. non-numbers, negative
  values, nil, more than (3) arguments passed, etc.?

Algorithm:
- Initialize variable and assign to Array holding passed arguments.
- Sort the Array from smallest to largest value.
- Initialize variable to hold result and assign to nil.
- If side 1 + side 2 is not less than side 3, result is invalid.
- Else if side 1 == side 2 == side 3, result is equilateral.
- Else if side 1 == side 2 AND side 1 != side 3, result is isoceles.
- Else if side 1 != side 2 AND side 1 != side 3 AND side2 != side 3, result is
  scalene
- Return result variable.

Examples:

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid
=end

def triangle(first, second, third)
  sides = [first, second, third].sort

  result =  if sides[0] + sides[1] < sides[2] || sides.include?(0)
              :invalid
            elsif sides[0] == sides[1] && sides[1] == sides[2]
              :equilateral
            elsif sides[1] == sides[2] && sides[0] != sides[2]
              :isosceles
            elsif sides[0] != sides[1] && sides[1] != sides[2] &&
                  sides[0] != sides[2]
              :scalene
            end

  result
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

=begin
Alternate solution:

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end
=end
