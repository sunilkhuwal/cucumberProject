Feature: Check out
	Scenario: Test Check out functionality
		Given I am on "http://automationpractice.com/index.php"
		When Enter in search box "Faded Short Sleeve T-shirts"
		And Click on search button
		And change the view from Grid to list
		And Click on Add to cart button
		Then Product should have "Product successfully added to your shopping cart"
		And Product should have "Faded Short Sleeve T-shirts"
		And Product should have "$16.51"
		When Click on Proceed to checkout button
		Then Summary page should have "Faded Short Sleeve T-shirts"
		And Summary page should have "demo_1"
		And Summary page should have "Color : Orange, Size : S"
		When Delete the item
		Then page should have "Your shopping cart is empty."