Feature: Automation Practice Cart
    As  an Automation Practice customer
    I   want to add an item to the cart
    And edit quantity of the item on the cart
    And remove the item from the cart


    Scenario: Add item to the cart
        Given I open the url "http://automationpractice.com/index.php?id_product=7&controller=product"
        When  I click on the button "#add_to_cart"
        Then  I expect that element "div.layer_cart_product" contains the text "Product successfully added to your shopping cart"

    Scenario: Edit item quantity from the cart
        Given I open the url "http://automationpractice.com/index.php?controller=order"
        And   I click on the button "a.cart_quantity_up"
        When  I pause for 1000ms
        Then  I expect that element "#summary_products_quantity" contains the text "2 Products"

    
    Scenario: Remove item from the cart
        Given I open the url "http://automationpractice.com/index.php?controller=order"
        And   I click on the button "i.icon-trash"
        Then  I expect that element "p.alert-warning" contains the text "Your shopping cart is empty."
