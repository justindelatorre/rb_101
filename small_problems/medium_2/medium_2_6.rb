=begin
A triangle is classified as follows:

- right One angle of the triangle is a right angle (90 degrees)
- acute All 3 angles of the triangle are less than 90 degrees
- obtuse One angle is greater than 90 degrees.
To be a valid triangle, the sum of the angles must be exactly 180 degrees, and
all angles must be greater than 0: if either of these conditions is not
satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a
symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is
a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating
point errors. You may also assume that the arguments are specified in degrees.

Inputs:
- (3) Integers

Outputs:
- Symbol

Data Structure(s):
- Array, to hold angle size Integer arguments

Rules:
  Explicit:
  - Triangle cannot exceed 180 degrees
  - All angles must be > 0
  - All passed arguments will be Integers and in degrees
  Implicit:
  - N/A

Clarifications:
- How should the method handle invalid arguments, e.g. non-Integers, nil, etc.?

Algorithm:
- Initialize variables and assign to Array containing Integer arguments
- Initialize variable and assign to result of the following conditional:
  - If the sum of the elements in the Array < 180 OR any element <= 0, :invalid
  - Else if any angle equals 90 degrees, :right
  - Else if all angles < 90 degress, :acute
  - Else if any angle > 90 degrees, :obtuse
- Return result variable

Examples:

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid
=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  result = if angles.sum < 180 || angles.any? { |angle| angle <= 0 }
             :invalid
           elsif angles.any? { |angle| angle == 90 }
             :right
           elsif angles.all? { |angle| angle < 90 }
             :acute
           elsif angles.any? { |angle| angle > 90 }
             :obtuse
           end

  result
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

=begin
Alternate solution:

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

Note: 
You do not need to implicitly return the result variable because Ruby will
implicitly return the result of the appropriate conditional branch.
=end
