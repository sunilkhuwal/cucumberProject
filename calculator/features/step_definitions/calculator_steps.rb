Given("the input {string}") do |input|
  @input = input
end

When("the calculator is run") do
  @output = `ruby calc.rb #{@input}`
  raise('Command failed!') unless $?.success?
end

Then("the output should be {string}") do |string|
  @output.should==string
end

