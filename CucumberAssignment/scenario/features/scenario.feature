Feature: Withdraw Fixed amount
	
	Scenario Outline: Withdraw fixed amount
		Given I have <Balanced> in my account
		When I choose to withdraw the fixed amount of <Withdrawal>
		Then I should receive <Received> cash
		And the balanced of my account should be <Remaining>
		
		Examples:
			|Balanced|Withdrawal|Received|Remaining|
			|$500    |$50       |$50     |$450     |
			|$500    |$100      |$100    |$400     |