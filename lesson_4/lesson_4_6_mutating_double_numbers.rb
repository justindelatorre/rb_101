=begin
Can you implement a double_numbers! method that mutates its argument?
=end

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]

double_numbers!(my_numbers)
p my_numbers
