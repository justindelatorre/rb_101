=begin
Describe the difference between ! and ? in Ruby. And explain what would happen 
in the following scenarios:

what is != and where should you use it?
!= is the inequality operator, which you can use to evaluate whether one value
is not equal to another value.

put ! before something, like !user_name
Adding ! before a value flips its "truthiness". For example, if user_name were
equal to 'Bob', it would be truthy. Adding the ! would make it falsy.

put ! after something, like words.uniq!
Adding ! after a method usually invokes a version of the original method that
"mutates the caller", which changes the original object either calling it or
passing through it. For example, word.uniq! would take an Array, presumably
filled with String elements, and remove duplicate String elements so that the
Array only has unique String values in it.

put ? before something
Putting ? before something usually invokes the ternary operator. Doing so
provides a more expressive way of writing simple if/else statements.

put ? after something
Putting ? after something, usually a method, invokes a method that returns
a boolean value after checking whether or not something is true, like include?.

put !! before something, like !!user_name
Similarly to putting a single ! in front of an object, putting two !s in front
flips the truthiness twice. For example, if user_name = 'Jane', then !user_name
should be falsy, which means !(!user_name) is truthy.
=end


