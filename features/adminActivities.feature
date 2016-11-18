Feature: Allow ServicesNearBy  to perform Admin activities

  Scenario:  Activating a user (Declarative)]
    When I have activating user in with email "kalyansaim@gmail.com"
    Then I should see activated successfull.


  Scenario:  Deactivating Activating a user (Declarative)]
    When I have deactivating user in with email "kalyansaim@gmail.com"
    Then I should see de-activated successfull.



#    successsignup
#    missing Emailid
#    invallid password
#    unmatched password
#    exixtingemail