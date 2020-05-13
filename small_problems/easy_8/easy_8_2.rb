=begin
Mad libs are a simple game where you create a story template with blanks for
words. You, or another player, then construct a list of words and place them
into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and
an adjective and injects those into a story that you create.

Inputs:
- four strings, separately requested

Outputs:
- string printed out to the console

Requirements:
- user must be prompted to give a noun, verd, adjective, and adverb, all
  separately
- the given strings must be interpolated into the output string
- How do we handle nil values or empty strings? What about non-word strings?

Abstraction:
- Prompt user for a noun, then gets.chomp the input
- Prompt user for a verb, then gets.chomp the input
- Prompt user for an adjective, then gets.chomp the input
- Prompt user for an adverb, then gets.chomp the input

Example:

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!
=end

print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
