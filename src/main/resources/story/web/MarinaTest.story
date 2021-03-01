Scenario: Create account
Given I am on a page with the URL '${URL1}'
When I click on element by the xpath '//*[@id='first-name-su']'
When I enter 'Marina' in a field by the xpath 'By.xpath(//*[@id='first-name-su'])'
When I click on element by the xpath 'By.xpath(//*[@id='last-name-su'])'
When I enter '${lastName}' in a field by the xpath 'By.xpath(//*[@id='last-name-su'])'
When I click on element by the xpath 'By.xpath(//*[@id='email-su'])'
When I enter '${userEmail}' in a field by the xpath 'By.xpath(//*[@id='email-su'])'
When I click on element by the xpath 'By.xpath(//*[@id='password-su'])'
When I enter '${password}' in a field by the xpath 'By.xpath(//*[@id='password-su'])'
When I click on a button with the name 'Create account'
Then the page title contains the text 'Account'

Scenario: Perform search for product by search box
Given I am on the main application page
When I click on element located 'By.xpath(//*[@id="global-search-input"])'
When I enter 'popcorn' in a field by the xpath 'By.xpath(//*[@id="global-search-input"])'
When I click on a button with the image by the xpath 'By.xpath(//*[@id="global-search-submit"]/span/img)'
Then the page with the URL '${URL2}' is loaded

Scenario: Open product page for product from previous step
Given I am on a page with the URL '${URL2}'
When I click on a link with the text 'SkinnyPop Popcorn Original, 6.7oz Sharing Size Bag' and URL '${URL3}'
Then the page with the URL '$URL3' is loaded

Scenario: Add product to cart
Given I am on a page with the URL '${URL3}'
When I click on a button with the name 'Add to card'
Then the page with the URL '$URL4' is loaded

Scenario: Navigate to cart
Given I am on a page with the URL '${URL4}'
When I click on an element by the xpath 'By.xpath(//*[@id="cart-root-container-content-skip"]/div[2]/div/div[1]/button)'
Then the page with the URL '$URL5' is loaded
