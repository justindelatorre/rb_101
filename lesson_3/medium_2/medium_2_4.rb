=begin
To drive that last one home...let's turn the tables and have the string show a
modified output, while the array thwarts the method's efforts to modify the
caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

Solution:
=> "My string looks like this now: pumpkinsrutabaga"
=> "My array looks like this now: ['pumpkins']

Explanation:
In this exercise, we use the << operator (which mutates the caller), so the
original my_string object changes state. We only perform reassignment on
an_array_param, which only affects the reference copy passed into the method
and not the original object.
=end

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
