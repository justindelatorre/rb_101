=begin
What is the return value of the following statement? Why?

Solution:
Array#pop removes the last item in a target array, but returns the ELEMENT
being pop-ed, so calling Array#size on the return value should return 11.
=end

['ant', 'bear', 'caterpillar'].pop.size
