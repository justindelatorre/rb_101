=begin
What does shift do in the following code? How can we find out?

Solution:
Hash#shift removes a key-value pair from the target hash. In this case, it will
return [:a, 'ant'] and hash will then be { b: 'bear' }
=end

hash = { a: 'ant', b: 'bear' }
hash.shift

p hash
