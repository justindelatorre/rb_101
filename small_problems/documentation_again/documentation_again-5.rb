=begin
What do each of these puts statements output?
=end

a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

=begin
https://ruby-doc.org/core-2.7.0/Array.html#method-i-fetch

Solution:
=> IndexError
=> "beats me" (Acts as default value in lieu of IndexError)
=> 49 (Block is executed because of invalid inex)
=end
