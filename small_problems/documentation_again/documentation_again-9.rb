=begin
Sometimes, the documentation is going to leave
you scratching your head.

In a very early assignment at Launch School, you
are tasked with writing a program that loads some
text messages from a YAML file. We do this with
YAML::load_file:

Find the documentation for YAML::load_file.
=end

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

=begin
https://ruby-doc.org/stdlib-2.7.1/libdoc/psych/rdoc/Psych.html#method-c-load_file
=end
