=begin
What is the return value of map in the following code? Why?

Solution:
This instance should return an array [nil, 'bear']. map's first evaluation
returns nil because the block doesn't get to evaluate the if branch. The second
evaluation returns 'bear' because it is longer than three characters.
=end

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
