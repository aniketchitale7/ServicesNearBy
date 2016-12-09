Feature: Allow ServicesNearBy  to visit profile page

  Scenario: profile page view and update
    When I have logged in with email "user.active@gmail.com" and password "kanna91221"
    Then I should see Signed in successfully.
    When I click on the Menu button
    Then I should see the menu
    When I click on My Profile Link
    Then I should see the profile of user
    When I click on Edit
    Then I should see the profile of user