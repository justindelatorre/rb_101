=begin
Write a method which takes a grocery list (array) of fruits with quantities and
converts it into an array of the correct number of each fruit.

Inputs:
- array (of arrays)

Outputs:
- array

Requirements:
- output array should contain elements multiplied by included number in argument
  array elements

Questions:
- How to handle nil, empty, or otherwise invalid arguments?
- The word "convert" in the prompt suggests returning the same array?
  - Checked the provided solution, and same array not needed

Abstraction:
- Create empty target array
- Loop through elements in the argument array
  - Push array[0] array[1] times into target array
- Return target array

Example:

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
=end

def buy_fruit(arr)
  list_arr = []

  arr.each do |fruit|
    fruit[1].times { list_arr << fruit[0] }
  end

  list_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
    ["apples", "apples", "apples", "orange", "bananas","bananas"]

=begin
Alternate solution:

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end
=end
