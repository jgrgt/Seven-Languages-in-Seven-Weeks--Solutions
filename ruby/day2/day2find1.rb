# No block:
f = File.open("input.txt")
# => #<File:input.txt>

f.each {|line| puts "Line: #{line}"}
# Line: This is the first line.
# Line: This is the second line.
# Line: And, well, this of course is the third...
# => #<File:input.txt>

# Note that f is still open.

# With block:
File.open('input.txt') {|f| f.each {|line| puts "Line: #{line}"}}
# Line: This is the first line.
# Line: This is the second line.
# Line: And, well, this of course is the third...
# => #<File:input.txt (closed)>

# Block advantage: auto-closing of the file. Similar to "with" in Python.