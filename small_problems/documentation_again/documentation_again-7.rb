=begin
Use irb to run the below code.

You should find that it prints a list of all of
the public methods available to the String s;
this includes not only those methods defined in
the String class, but also methods that are inherited
from Object (which inherits other methods from the
BasicObject class and the Kernel module). That's a
lot of methods.

How would you modify this code to print just the
public methods that are defined or overridden by
the String class? That is, the list should exclude
all members that are only defined in Object,
BasicObject, and Kernel.
=end

s = 'abc'
puts s.public_methods(false).inspect

=begin
https://ruby-doc.org/core-2.7.1/Object.html#method-i-public_methods

Solution: 
To have the code only return String methods, you need
to set the all argument to false, because it defaults
to true.
=end
