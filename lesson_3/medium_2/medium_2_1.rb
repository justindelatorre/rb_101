=begin
Every named entity in Ruby has an object_id. This is a unique identifier for
that object.

It is often the case that two different things "look the same", but they can
be different objects. The "under the hood" object referred to by a particular
named-variable can change depending on what is done to that named-variable.

In other words, in Ruby, all values are objects...but they are not always the
same object.

Predict how the values and object ids will change throughout the flow of the
code below:
=end

def fun_with_ids
  # (1) *_outer variables are given initial assignments. 
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  # (2) *_outer_id variables are assigned to the object_id's of *_outer variables.
  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  # Output check
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
  puts

  1.times do
    # (3) *_outer_inner_id's are assigned to the same object_id's as *_outer_id
    #     variables.
    a_outer_inner_id = a_outer.object_id
    b_outer_inner_id = b_outer.object_id
    c_outer_inner_id = c_outer.object_id
    d_outer_inner_id = d_outer.object_id

    # Output check: *_outer_id and *_outer_inner_id should be the same. 
    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
    puts

    # (4) Re-assigning *_outer variables to new values. *_outer_id and
    #     *_outer_inner_id should remain unchanged.
    a_outer = 22
    b_outer = "thirty three"
    c_outer = [44]
    d_outer = c_outer[0] # => 44

    # Output check: Note how the strings use *_outer.object_id to refer to the
    #               object_id of the newly re-assigned *_outer variables.
    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
    puts

    # (5) Instantiation and assignment of new *_inner variables, which will be
    #     inaccessible outside of this loop block. 
    a_inner = a_outer # => 22
    b_inner = b_outer # => "thirty-three"
    c_inner = c_outer # => [44]
    d_inner = c_inner[0] # => 44

    # (6) Capturing object_id of *_inner in *_inner_id variables, both of which
    #     are only accessible within this loop block.
    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id

    # Output check: Compare the values of *_inner_id to *_outer.object_id.
    #               Should be the same since *_inner was assigned to
    #               current *_outer variables.
    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
    puts
  end

  # Output check: *_outer_id and *_outer.object_id should now be different
  #               since re-assignment occurred within the previous loop.
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
  puts

  # Output check: This block should return rescue values since *inner* values
  #               are inaccessible to outer scopes.
  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
end

fun_with_ids
