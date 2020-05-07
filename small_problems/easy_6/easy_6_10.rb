=begin
Write a method that takes a positive integer, n, as an argument, and displays a
right triangle whose sides each have n stars. The hypotenuse of the triangle
(the diagonal side in the images below) should have one end at the lower-left of
the triangle, and the other end at the upper-right.

Inputs:
- integer, positive

Output:
- console-printed right triangle

Requirements:
- the adjacent, non-hypotenuse sides of the triangle must possess the same
  number of stars
- the two, non-90 degree corners of the triangle must appear in the upper-right
  and lower-left corners of the console

Abstraction:
- Create a counter starting at 1
- Create a loop that will loop from 1 to n, the passed integer
- Each loop, print n - counter spaces, then n stars
- Increment counter + 1

Examples:

triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end

def triangle(int)
  counter = 1
  while counter <= int
    puts ' ' * (int - counter) + '*' * counter
    counter += 1 
  end
end

triangle(5)
triangle(9)
