=begin
What is the return value of reject in the following code? Why?

Solution:
Array#reject returns a new array containing the items in the target array for
which the given block is not true. In this case, puts num returns nil, a falsey
value, each time the block is run, so reject will return [1, 2, 3].
=end

[1, 2, 3].reject do |num|
  puts num
end
