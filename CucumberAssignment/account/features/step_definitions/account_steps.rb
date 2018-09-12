Given("transfer fund of amount ${int} from my {string} to {string}") do |amount, fromAccount, toAccount|
  @amount = amount
  @fromAccount = fromAccount
  @toAccount = toAccount
end

Then("print the success message") do
  puts "Transfer $#{@amount} amount successfully From #{@fromAccount} To #{@toAccount}. :)"
end
