Feature: Manage inventory
    As a Merchant
    I want to list items, quantity, and prices
    Because I want to sell things on Hamazon

    Scenario: Merchant should be able to add Item to Storefront

        Given I am a logged in Merchant
        When I go to the My Storefront page
        And I tap the "Create Item" button
        Then I should see New Item form
        And I should see a field for "Price (USD)"
        And I should see a field for "item name"
        And I should see a field for "description"
        And I should see a field for "primary photo URL"
        And I should see a field for "quantity"
        
        When I tap "save"
        Then I should see the Item in my Storefront

    Scenario: Merchant should be able to hide Item
        Given I am a logged in Merchant
        When I go to the My Storefront page
        And I tap an Item
        Then I should be on the Item Edit screen
        And I should see a checkbox for "List on Storefront?"

        When I untick the checkbox and save
        And I go to the Storefront
        Then I should not see the Item listed
    
    Scenario: Merchant should be able to show Item
        Given I am a logged in Merchant
        When I go to the My Storefront page
        And I tap an Item
        Then I should be on the Item Edit screen
        And I should see a checkbox for "List on Storefront?"

        When I tick the checkbox and save
        And I go to the Storefront
        Then I should see the Item listed

    