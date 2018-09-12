Feature: Women tab
	Scenario: Women tab functionality
		Given I am on "http://automationpractice.com/index.php"
		When I click on "Women"
		Then Tops category should persent
		When The Tops category is "true"
		Then page should have "Showing 1 - 2 of 2 items"
		When The Tops category is "false"
		Then page should have "Showing 1 - 7 of 7 items"