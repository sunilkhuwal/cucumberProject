Given("the flight {string} is ready for leaving today") do |input|
  @input = input
  puts "EZY4567"
end

When("the flight is leaving today") do
  @output = @input
  # raise('Command failed!') unless $?.success?
  puts "EZY4567 - when"
end

Then("the flight should be {string} leaving today") do |string|
  @output.should==string
  puts "EZY4567 - then"
end

