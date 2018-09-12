Given("the input flight code {string}") do |flightCode|
  @flightCode = flightCode
end

And("print the flight code") do
  puts @flightCode
end
