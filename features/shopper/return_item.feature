Feature: Shopper returns an item

Scenario: Shopper requests Item return
Given I'm a logged-in Shopper with past Orders
When I go to My Orders page
And I select an Order
And I select an Item from that Order
And I tap "Return Item"
Then I should see the Return Item Form
When I submit the form
Then I should get an email with a Printable Packing Slip

Scenario: Shopper receives refund
Given I'm a logged-in Shopper with a pending return
When that arrives at Hamazon HQ and is scanned in
Then my account should be refunded the purchase amount
And the Order status should update
And I should get an email notification

Scenario: Shopper requests Item return outside Return Window
Given I'm a logged-in Shopper on an Order page
And that Order is outside the Return Window
Then "Return Item" should be disabled
