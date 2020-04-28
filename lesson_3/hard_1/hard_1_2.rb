=begin
What is the result of the last line in the code below?
=end

greetings = { a: 'hi' }
informal_greeting = greetings[:a] # informal_greeting = 'hi' (points to same obj)
informal_greeting << ' there' # mutates caller, => 'hi there'

puts informal_greeting  #  => "hi there"
puts greetings # Solution: { a: 'hi there'}
