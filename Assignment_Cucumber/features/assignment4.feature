Feature: Search Box
	Scenario: Test Search box functionality
		Given I am on "http://automationpractice.com/index.php"
		Then search box should present
		When Enter in search box "Printed Summer Dress"
		And Click on search button
		Then page should have "Showing 1 - 3 of 3 items"
		And value should be "$28.98"
		And value should be "$30.50"
		And value should be "$16.40"
		When change the view from Grid to list
		Then page should have "Showing 1 - 3 of 3 items"
		And value should be "$28.98"
		And value should be "$30.50"
		And value should be "$16.40"