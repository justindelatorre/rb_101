=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is
an odd integer that is supplied as an argument to the method. You may assume
that the argument will always be an odd integer.

Requirements:
- n is always odd
- diamond must have 4 points
- diamond must sit in n x n grid
- relationships:
  - between stars printed and line number:
    - stars = (line # * 2) - 1
  - between number of spaces on line and stars printed:
    - total_spaces = n - stars
    - spaces on each side of star line: total_spaces / 2

Inputs:
- integer

Outputs:
- console output

Algorithm:
- Set line_counter variable to 1
- Set increment_value to 1
- Loop n times |line|
  - stars = (line * 2) - 1
  - spaces = (n - stars) / 2
  - print spaces + stars + spaces
  - if line_counter >= (n / 2) - 1
    - set increment_value to -1
  - line_counter += increment_value

Examples:

diamond(1)

*

diamond(3)

 *
***
 *
=end

def diamond(n)
  line_counter = 1
  increment_value = 1

  n.times do
    stars = (line_counter * 2) - 1
    spaces = (n - stars) / 2
    puts (' ' * spaces) + ('*' * stars) + (' ' * spaces)

    increment_value = -1 if line_counter >= (n / 2) + 1

    line_counter += increment_value
  end
end

diamond(1)
diamond(3)
diamond(9)

=begin
Alternate solution:

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end
=end
