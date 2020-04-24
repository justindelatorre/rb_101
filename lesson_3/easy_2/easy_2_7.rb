=begin
In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

We could have used either Array#concat or Array#push to add Dino to the family.

How can we add multiple items to our array? (Dino and Hoppy)
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push('Dino', 'Hoppy')

p flintstones

=begin
Alternate solution:
flintstones.concat(%w(Dino Hoppy))
=end
