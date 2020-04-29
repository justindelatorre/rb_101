=begin
What is the return value of the following code? Why?

Solution:
[1, nil, nil]. Array#map returns an array with transformed values according to
the return value of the invoked block. The first run sees the else branch
evaluated, returning 1. The next two runs see the if branch evaluated, but
puts num returns nil, so that gets added to the return array for each of the
last two runs.
=end

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
