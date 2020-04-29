=begin
What is the block's return value in the following code? How is it determined?
Also, what is the return value of any? in this code and what does it output?

Solution:
The block will return the result of num.odd? for each iteration, where num is
the current element being passed into the block. Any returns true if the
block return value returns non-falsey values for any element in the target
array, so it should return true in this case.
=end

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
