a = (1..16).to_a

# Only each
n = 0
a.each do |x|
    print x

    n = n + 1
    if (n % 4) == 0
        puts
    else
        print ", "
    end
end


# each_slice
a.each_slice(4) do |x1, x2, x3, x4|
    puts "#{x1}, #{x2}, #{x3}, #{x4}"
end
