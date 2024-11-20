s = Time.now
puts (1000000000.times.sum)
e = Time.now
puts ("Time spent : ".concat ((e - s).to_s))
