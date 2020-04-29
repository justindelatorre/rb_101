=begin
What is the return value of each_with_object in the following code? Why?

Solution:
each_with_object will return a hash in this case:

hash = { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }
=end

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
