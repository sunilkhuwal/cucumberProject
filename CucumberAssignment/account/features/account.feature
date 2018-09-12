Feature: Account transfer
	
	Scenario: Transfer fund to one account to another
		Given transfer fund of amount $500 from my "saving account" to "checking account"
		Then print the success message