=begin
Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

What does this code print out?

Solution:
Alice
Bob

Now, let's look at something a bit different:

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

Solution:
BOB
BOB

This happens becase String#upcase! mutates the caller and because in Ruby,
assignment means assigning a reference to a variable, so name and save_name
refer to the same String object.
=end
