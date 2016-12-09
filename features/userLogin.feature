Feature: Allow ServicesNearBy  to login

  Scenario:  successful Login (Declarative)]
    When I have logged in with email "user.active@gmail.com" and password "kanna91221"
    Then I should see Signed in successfully.


  Scenario:  unsuccessful Login (Declarative)]
    When I have logged in with email "user.active@gmail.com" and password "ajk"
    Then I should see Invalid Email or password.


  Scenario: successful Login of Admin (Declarative)
    When I have logged in with email "admin.active@gmail.com" and password "kanna91221" as admin
    Then I should see Signed in successfully.


  Scenario: first time login (Declarative)
    When I have logged in with email "first.time@gmail.com" and password "kanna91221" as admin
    Then I should see profile page.


  Scenario: successful Login of inactive Admin (Declarative)
    When I have logged in with email "admin.inactive@gmail.com" and password "kanna91221" as admin
    Then I should see login failed.




#    successsignup
#    missing Emailid
#    invallid password
#    unmatched password
#    exixtingemail