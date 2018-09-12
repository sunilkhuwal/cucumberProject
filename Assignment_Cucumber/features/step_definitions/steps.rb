#################################
# Developer: Sunil Kumar        #
#################################


$element_locator_map = Hash.new
$element_locator_map["contact_us"] = "a[title = 'Contact Us']"
$element_locator_map["Sign In"] = "a[title = 'Log in to your customer account']"
$element_locator_map["Shop Now"] = "button[class='btn btn-default']"
$element_locator_map["Get Savings Now"] = "img[class='img-responsive']"
$element_locator_map["Email address"] = "input[id='email']"
$element_locator_map["Send"] = "button[id='submitMessage']"
$element_locator_map["Subject"] = "textarea[id='message']"
$element_locator_map["Subject Heading"] = "select[id='id_contact']"
$element_locator_map["Women"] = "a[title='Women']"
$element_locator_map["Tops"] = "input[id='layered_category_4']"
$element_locator_map["Search Box"] = "input[id='search_query_top']"
$element_locator_map["List"] = "li[id='list']"
$element_locator_map["Search Button"] = "button[name='submit_search']"
$element_locator_map["Add to cart"] = "a[title='Add to cart']"
$element_locator_map["cart pop-up"] = "div[id='layer_cart']"
$element_locator_map["Proceed to checkout"] = "a[title='Proceed to checkout']"
$element_locator_map["Delete"] = "a[title='Delete']"

def get_element(element_key)
	return $element_locator_map[element_key]
end

Given("I am on {string}") do |url|
  visit url
end


##########################################
#Assignment Example
##########################################
Then("Element {string} should be persent") do |element|
  element_loc = get_element(element)
  expect(page.has_css?(element_loc)).to be true
end

When("I click on {string}") do |element|
  element_loc = get_element(element)
  find(element_loc).click
end

Then("Text {string} present on page") do |text|
  expect(page.has_content?(text)).to be true
end

##########################################
#Assignment 1 Example
##########################################
When("I have the following element:") do |table|
  @board = table.raw
end

Then("the above element should be persent") do
  @board.each do |rowdata|
    rowdata.each do |col|
      element_loc = get_element(col)
      expect(page.has_css?(element_loc)).to be true
    end
  end
end

##########################################
#Assignment 2 Example
##########################################
When("Enter email address {string}") do |email|
  element_loc = get_element("Email address")
  find(element_loc).set(email)
end

When("Enter message {string}") do |subject|
  element_loc = get_element("Subject")
  find(element_loc).set(subject)
end

When("Choose Subject Heading {string}") do |subHeading|
  element_loc = get_element("Subject Heading")
  find(element_loc).select(subHeading)
end

When("Click on Send button") do
  element_loc = get_element("Send")
  find(element_loc).click
end

Then("invalid error message {string} should come") do |msg|
  expect(page.has_content?(msg)).to be true
end

Then("subject heading {string} should come") do |msg|
  expect(page.has_content?(msg)).to be true
end

Then("success message {string} should come") do |msg|
  expect(page.has_content?(msg)).to be true
end

##########################################
#Assignment 3 Example
##########################################
Then("Tops category should persent") do
  element_loc = get_element('Tops')
  expect(page.has_css?(element_loc)).to be true
end

When("The Tops category is {string}") do |tops|
  element_loc = get_element('Tops')
  if(tops=="true")
	find(element_loc).set(true)
	page.has_no_content?('Loading...', :wait => 30)
  else
	find(element_loc).set(false)
	page.has_no_content?('Loading...', :wait => 30)
  end
end

Then("page should have {string}") do |msg|
  expect(page.has_content?(msg)).to be true
end

##########################################
#Assignment 4 Example
##########################################
Then("search box should present") do
  element_loc = get_element('Search Box')
  expect(page.has_css?(element_loc)).to be true
end

When("Enter in search box {string}") do |searchBox|
  element_loc = get_element('Search Box')
  find(element_loc).set(searchBox)
end

When("Click on search button") do
  element_loc = get_element('Search Button')
  find(element_loc).click
end

Then("value should be {string}") do |value|
  expect(page.has_content?(value)).to be true
end

When("change the view from Grid to list") do
  element_loc = get_element('List')
  find(element_loc).click
end

##########################################
#Assignment 5 Example
##########################################
When("Click on Add to cart button") do
  element_loc = get_element('Add to cart')
  page.has_css?(element_loc, :wait => 30)
  find(element_loc).click
end

Then("Product should have {string}") do |value|
	element_loc = get_element('cart pop-up')
  expect(find(element_loc).has_content?(value)).to be true
end

When("Click on Proceed to checkout button") do
  element_loc = get_element('Proceed to checkout')
  find(element_loc).click
end

Then("Summary page should have {string}") do |value|
  expect(page.has_content?(value)).to be true
end

When("Delete the item") do
  element_loc = get_element('Delete')
  find(element_loc).click
end

