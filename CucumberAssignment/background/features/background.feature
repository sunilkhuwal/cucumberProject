Feature: Background feature
	
	Background: New ATM PIN
		Given ATM card is send to customer
		And ATM card has temp PIN
	
	Scenario: VISA card
		Given ATM card of "VISA" type
		Then print the VISA
		
	Scenario: Master card
		Given ATM card of "Master" type
		Then print the Master