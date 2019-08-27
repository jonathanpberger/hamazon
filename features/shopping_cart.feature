Feature: Shopping Cart
    Scenario: User should be able to add Item to Shopping cart

    Given I am a loggedin User
    When I go to the Item Page
    And I tap the "Add Item to Cart" button
    Then I should see the Cart Inventory increment
    And I should see the Cart Sub-Total increment
    And I should see the Warehouse Inventory decrement