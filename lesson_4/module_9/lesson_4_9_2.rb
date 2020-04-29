=begin
How does count treat the block's return value? How can we find out?

Solution:
Array#count counts the number of elements for which the block returns a true
value. So, it should return 2, since two elements in the array have a length
less than 4.
=end

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
