Feature: Allow ServicesNearBy  to login

  Scenario:  successful Login (Declarative)]
    When I have logged in with email "user.active@yahoo.com" and password "kanna91221"
    Then I should see Signed in successfully.


  Scenario:  unsuccessful Login (Declarative)]
    When I have logged in with email "user.active@gmail.com" and password "ajk"
    Then I should see Invalid Email or password.


  Scenario: successful Login of Admin (Declarative)
    When I have logged in with email "admin.active@gmail.com" and password "kanna91221" as admin
    Then I should see Signed in successfully.

#    successsignup
#    missing Emailid
#    invallid password
#    unmatched password
#    exixtingemail