if ARGV[0] == "add"
  first = ARGV[1].to_i
  second = ARGV[2].to_i
  print first + second
end

if ARGV[0] == "subtract"
  first = ARGV[1].to_i
  second = ARGV[2].to_i
  print first - second
end

if ARGV[0] == "divide"
  first = ARGV[1].to_i
  second = ARGV[2].to_i
  print first / second
end

if ARGV[0] == "multiply"
  first = ARGV[1].to_i
  second = ARGV[2].to_i
  print first * second
end