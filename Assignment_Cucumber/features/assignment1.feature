Feature: Contact Us Page
	Scenario: Contact Us link persent
		Given I am on "http://automationpractice.com/index.php"
		When I have the following element:
			|contact_us|
			|Sign In|
			|Shop Now|
			|Get Savings Now|
		Then the above element should be persent