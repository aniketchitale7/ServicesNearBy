Feature: Allow ServicesNearBy  to perform Admin activities

  Scenario:  Activating a user (Declarative)]
    When I have activating user in with email "kalyansaim@gmail.com"
    Then I should see activated successfull.


  Scenario:  Deactivating Activating a user (Declarative)]
    When I have deactivating user in with email "kalyansaim@gmail.com"
    Then I should see de-activated successfull.

  Scenario:  Activating a admin (Declarative)]
    When I have activating admin in with email "kalyansaim@gmail.com"
    Then I should see activated successfull.


  Scenario:  Deactivating Activating a admin (Declarative)]
    When I have deactivating admin in with email "kalyansaim@gmail.com"
    Then I should see de-activated successfull.


  Scenario:  Activating a vendor (Declarative)]
    When I have activating vendor in with email "kalyansaim@gmail.com"
    Then I should see activated successfull.


  Scenario:  Deactivating Activating a vendor (Declarative)]
    When I have deactivating vendor in with email "kalyansaim@gmail.com"
    Then I should see de-activated successfull.



#    successsignup
#    missing Emailid
#    invallid password
#    unmatched password
#    exixtingemail