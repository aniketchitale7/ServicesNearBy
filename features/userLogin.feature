Feature: Allow ServicesNearBy  to login

  Scenario:  successful Login
    When I have logged in with email "chanakya.kumar@gmail.com" and and password "chanakya"
    And click_button 'Log in'
    Then Message displayed Signed in successfully.
