Feature: Test Contact Us Page
	Background:
		Given I am on "http://automationpractice.com/index.php"
		When I click on "contact_us"
		
	Scenario: Check invalid email address error on Contact Us page 
		And Enter email address "abcdwxyz.com"
		And Click on Send button
		Then invalid error message "Invalid email address." should come
		
	Scenario: Check blank message error on Contact Us page 
		And Enter email address "wxyz@abcd.com"
		And Click on Send button
		Then invalid error message "The message cannot be blank." should come
		
	Scenario: Check select subject error on Contact Us page 
		And Enter email address "wxyz@abcd.com"
		And Enter message "Hi Sunil"
		And Click on Send button
		Then invalid error message "Please select a subject from the list provided." should come
		
	Scenario: Check changing subject heading msg on Contact Us page 
		And Enter email address "wxyz@abcd.com"
		And Enter message "Hi Sunil"
		And Choose Subject Heading "Customer service"
		Then subject heading "For any question about a product, an order" should come
		And Choose Subject Heading "Webmaster"
		Then subject heading "If a technical problem occurs on this website" should come
		
	Scenario: Check successfully send message on Contact Us page 
		And Enter email address "wxyz@abcd.com"
		And Enter message "Hi Sunil"
		And Choose Subject Heading "Customer service"
		And Click on Send button
		Then success message "Your message has been successfully sent to our team." should come