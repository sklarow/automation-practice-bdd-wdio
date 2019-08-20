Feature: Automation Practice Quickview
    As an Automation Practice customer
    I want to open the quickview from a product
    And see that all the fields are correct
    
    Scenario: Check the Quickview informations
        Given I open the url "http://automationpractice.com/index.php"
        And   I click on the element "//ul[@id='homefeatured']//a[@class='product-name' and @title='Faded Short Sleeve T-shirts']//preceding::i[@class='icon-eye-open']"
        And    I wait on element "//iframe[contains(@name, 'fancybox-frame')]" for 5000ms to be displayed
        And    I set the iframe "//iframe[contains(@name, 'fancybox-frame')]"
        Then  I expect that element "//h1[@itemprop='name']" contains the text "Faded Short Sleeve T-shirts"
        And   I expect that element "#short_description_content" contains the text "Faded short sleeve t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!"
        And   I expect that element "#add_to_cart" contains the text "Add to cart" 
        