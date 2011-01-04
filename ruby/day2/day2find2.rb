h = {"one" => 1, "two" => 2}
# => {"two"=>2, "one"=>1}

a = h.to_a
# => [["two", 2], ["one", 1]]

Hash[a]
# => {"two"=>2, "one"=>1}
