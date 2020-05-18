=begin
Write a method that takes a first name, a space, and a last name passed as a
single String argument, and returns a string that contains the last name, a
comma, a space, and the first name.

Inputs:
- string

Outputs:
- string

Requirements:
- output string must follow format of "#{last_name}, #{first_name}"

Clarifications:
- How do we handle non-string, empty, or nil arguments?

Abstraction:
- Split argument string into a target array
- Use string interpolation and array element referencing to return a string in
  the format "#{arr[1]}, #{arr[0]}"

Examples:

swap_name('Joe Roberts') == 'Roberts, Joe'
=end

def swap_name(str)
  arr = str.split

  "#{arr[1]}, #{arr[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'

=begin
Alternate solution:

def swap_name(name)
  name.split(' ').reverse.join(', ')
end
=end
