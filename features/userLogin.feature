Feature: Allow ServicesNearBy  to login

  Scenario:  successful Login (Declarative)]
    When I have logged in with email "chanakya.kumar@gmail.com" and password "chanakya"
    Then I should see Signed in successfully.


  Scenario:  unsuccessful Login (Declarative)]
    When I have logged in with email "chanakya.kumar@gmail.com" and password "chanavfkya"
    Then I should see Invalid Email or password.



#    successsignup
#    missing Emailid
#    invallid password
#    unmatched password
#    exixtingemail