=begin
Find the index of the first name that starts with "Be".
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.find_index { |name| name[0, 2] == 'Be' }

=begin
Alternate solution:

flintstones.index { |name| name[0, 2] == 'Be' }
=end
