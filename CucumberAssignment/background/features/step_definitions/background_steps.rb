Given("ATM card is send to customer") do
  puts "Sending ....."
end

Given("ATM card has temp PIN") do
  puts "ATM Temp PIN ****"
end

Given("ATM card of {string} type") do |atm|
  @atm = atm
end

Then("print the VISA") do
  puts "ATM is #{@atm}"
end

Then("print the Master") do
  puts "ATM is #{@atm}"
end