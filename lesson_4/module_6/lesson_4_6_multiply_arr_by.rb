=begin
Try coding a method that allows you to multiply every array item by a specified
value.
=end

def multiply(arr, multiple)
  counter = 0

  loop do
    break if counter == arr.size

    arr[counter] *= multiple

    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3)

p my_numbers
