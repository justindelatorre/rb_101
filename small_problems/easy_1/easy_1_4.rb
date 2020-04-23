=begin
Write a method that counts the number of occurrences of each element in a given
array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted,
print each element alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2
=end

vehicles = %w(
  car car truck car SUV truck
  motorcycle motorcycle car truck
)

def count_occurrences(str_arr)
  # Loop through array and collect counts in a hash
  counts = {}
  str_arr.each do |element|
    if counts.key?(element)
      counts[element] += 1
    else
      counts[element] = 1
    end
  end

  # Loop through hash and print element and counts
  counts.each { |k, v| puts "#{k} => #{v}" }
end

count_occurrences(vehicles)
