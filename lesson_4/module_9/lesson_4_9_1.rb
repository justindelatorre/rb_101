=begin
What is the return value of the select method below? Why?
=end

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3]
