=begin
The Array#bsearch method is used to search ordered
Arrays more quickly than #find and #select can.
Assume you have the following code:

a = [1, 4, 8, 11, 15, 19]

How would you search this Array to find the first
element whose value exceeds 8?
=end

a = [1, 4, 8, 11, 15, 19]

puts a.bsearch { |x| x > 8 } 

=begin
https://ruby-doc.org/core-2.5.0/Array.html#method-i-bsearch
=end
