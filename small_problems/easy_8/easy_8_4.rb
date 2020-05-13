=begin
Write a method that returns a list of all substrings of a string. The returned
list should be ordered by where in the string the substring begins. This means
that all substrings that start at position 0 should come first, then all
substrings that start at position 1, and so on. Since multiple substrings will
occur at each position, the substrings at a given position should be returned in
order from shortest to longest.

You may (and should) use the substrings_at_start method you wrote in the
previous exercise.

Inputs:
- string

Outputs:
- array containing strings

Requirements:
- output array should sort internally by length, starting at each index
  position
- How should we handle empty strings, nil, or non-string elements?

Abstraction:
- Initialize an empty target array
- Initialize a counter variable at 0
- Loop while counter < size of argument string
  - Call substrings_at_start on a slice of the argument string starting at the
    counter index
  - Pass the result into the target array
  - Increment counter
- Return a flattened version of the target array

Examples:

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=end

def substrings_at_start(str)
  arr = []
  counter = 0 

  while counter < str.size
    arr << str.slice(0..counter)
    counter += 1
  end 

  arr 
end

def substrings(str)
  arr = []
  counter = 0

  while counter < str.size
    arr << substrings_at_start(str.slice(counter..str.size - 1))
    counter += 1
  end

  arr.flatten
end

p substrings('abcde') == [
    'a', 'ab', 'abc', 'abcd', 'abcde', 
    'b', 'bc', 'bcd', 'bcde',
    'c', 'cd', 'cde',
    'd', 'de',
    'e'
  ]

=begin
Alternate solutions:

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end
=end
