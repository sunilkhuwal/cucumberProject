Feature: Contact Us Page
	Scenario: Contact Us link persent
		Given I am on "http://automationpractice.com/index.php"
		Then Element "contact_us" should be persent
		
	Scenario: Contact Us link works
		Given I am on "http://automationpractice.com/index.php"
		When I click on "contact_us"
		Then Text "CUSTOMER SERVICE - CONTACT US" present on page