# Simple grep

FILENAME = "input.txt"

def grep(filename, expression)
    File.open(filename) {|f| f.each {|line| puts line if line =~ /#{expression}/}}
end

def test(expression)
    puts "Checking expression '#{expression}'"
    puts 'Results:'
    puts
    grep(FILENAME, expression)
    puts
    puts "End of check for expression '#{expression}'"
    puts
end

test("third")
test("the")
