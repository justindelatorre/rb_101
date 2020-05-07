=begin
Given the following data structure, and without using the Array#to_h method,
write some code that will return a hash where the key is the first item in each
sub array and the value is the second item.
=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

new_hsh = arr.each_with_object({}) do |element, hsh|
            hsh[element[0]] = element[1]
          end

p new_hsh

=begin
Alternate solution:

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end
=end
