Kernel.puts("hello world")

=begin
Rubocop output:

Inspecting 1 file
C

Offenses:

hello.rb:1:13: C: Prefer single-quoted strings when you don't need string interpolation or special symbols.
Kernel.puts("hello world")
            ^^^^^^^^^^^^^

1 file inspected, 1 offense detected
=end
