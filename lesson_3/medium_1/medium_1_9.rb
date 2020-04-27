=begin
Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

What would be the return value of the following method invocation?

bar(foo)

Solution:
"no"

Explanation:
The foo method always return "yes"; the param parameter is never used in the
method body. So when bar(foo) is called, the program calls bar("yes"). The
bar("yes") then evaluates to:

"yes" == "no" ? "yes" : "no"

The boolean comparison is false, so bar returns "no" as per the ternary
operator. 
=end
