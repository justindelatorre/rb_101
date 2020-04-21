=begin
Consider the following method and a call to that method.

Use the ruby documentation to determine what this code
will print.
=end

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

=begin
Solution:
=> [4, 5, 3, 6]

Explanation:
http://ruby-doc.org/ > doc/syntax/calling_methods.rdoc

Ruby follows a specific order for arguments:
positional > default with supplied values > default values

The example uses required and optional arguments,
so first Ruby looks to see if the number of passed
arguments is enough for the method. It clearly isn't,
so it assigns a = 4, b = 2, saves the 6, uses the
c = 3 optional argument assignment, then takes assigns
d = 6. All of this is done to ensure the right number
of arguments get passed.
=end
