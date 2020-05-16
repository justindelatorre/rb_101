=begin
Create a method that takes 2 arguments, an array and a hash. The array will
contain 2 or more elements that, when combined with adjoining spaces, will
produce a person's name. The hash will contain two keys, :title and :occupation,
and the appropriate values. Your method should return a greeting that uses the
person's full name, and mentions the person's title and occupation.

Inputs:
- array containing (2) or more elements
- hash
  - (2) keys: :title and :occupation
  - associated values

Outputs:
- string printed to the console containing the data from the argument inputs

Questions:
- Will all the elements in the argument array and hash be strings?

Requirements:


Abstraction:
- Create new string to hold elements of argument array
- Assign new string to join-ed (using ' ' delimeter) elements of argument array
- Use string interpolation to generate output string and puts to console

Example:

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.
=end

def greetings(arr, hsh)
  name_str = arr.join(' ')

  puts "Hello, #{name_str}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} "\
       "around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
