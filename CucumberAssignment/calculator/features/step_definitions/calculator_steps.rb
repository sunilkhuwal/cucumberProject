Given("the input {string} and {string}") do |first, second|
  @first = first
  @second = second
end

When("the calculator do sum") do
  @output = `ruby calc.rb add #{@first} #{@second}`
  raise('Command failed!') unless $?.success?
end

When("the calculator do subtract") do
  @output = `ruby calc.rb subtract #{@first} #{@second}`
  raise('Command failed!') unless $?.success?
end

When("the calculator do divide") do
  @output = `ruby calc.rb divide #{@first} #{@second}`
  raise('Command failed!') unless $?.success?
end

When("the calculator do multiply") do
  @output = `ruby calc.rb multiply #{@first} #{@second}`
  raise('Command failed!') unless $?.success?
end

Then("the output should be {string}") do |expected_output|
  expect(@output).to eql(expected_output)
end
