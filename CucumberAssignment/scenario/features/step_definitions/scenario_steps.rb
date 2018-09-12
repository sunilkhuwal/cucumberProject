Given("I have ${int} in my account") do |bal|
  puts "acc #{bal}"
end

When("I choose to withdraw the fixed amount of ${int}") do |withdraw|
  puts "with #{withdraw}"
end

Then("I should receive ${int} cash") do |receive|
  puts "receive #{receive}"
end

Then("the balanced of my account should be ${int}") do |remain|
  puts "remain #{remain}"
end
