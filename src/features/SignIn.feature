Feature: Automation Practice SignIn
    As   an Automation Practice customer
    I    want to not be able to SignIn with wrong credentials
    And  I can signIn with correct credentials

    Background:
        Given I open the url "http://automationpractice.com/index.php"
        And   I click on the element "a.login"


    Scenario: SignIn with invalid email
        And   I set "invalidmail" to the inputfield "#email"
        And   I set "12345" to the inputfield "#passwd"
        When  I click on the button "#SubmitLogin"
        Then  I expect that element "div.alert-danger" contains the text "Invalid email address."
    
    Scenario: SignIn with valid email and empty password
        And   I set "validmail@mail.com" to the inputfield "#email"
        When  I click on the button "#SubmitLogin"
        Then  I expect that element "div.alert-danger" contains the text "Password is required."

    Scenario: SignIn with valid email and wrong password
        And   I set "validmail@mail.com" to the inputfield "#email"
        And   I set "wrongmail" to the inputfield "#passwd"
        When  I click on the button "#SubmitLogin"
        Then  I expect that element "div.alert-danger" contains the text "Authentication failed."

    Scenario: SignIn with valid credential               
        And   I set "teste_philips@teste.com" to the inputfield "#email"
        And   I set "12345" to the inputfield "#passwd"
        When  I click on the button "#SubmitLogin"
        Then  I expect that element "a.account" contains the text "Fernando Philips"