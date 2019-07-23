people = ["Bob", "Jane", "Joe"]
print_arg = Proc.new do |arg|
  puts arg
end

print_arg.call("Linda")
people.each(&print_arg)
