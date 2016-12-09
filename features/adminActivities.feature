Feature: Allow ServicesNearBy  to perform Admin activities

  Scenario:  Activating a user (Declarative)]
    When I have activating user in with email "user.deactive@gmail.com"
    Then I should see activated successfull.


  Scenario:  Deactivating Activating a user (Declarative)]
    When I have deactivating user in with email "user.active@gmail.com"
    Then I should see de-activated successfull.

  Scenario:  Activating a admin (Declarative)]
    When I have activating admin in with email "admin.deavtive@gmail.com"
    Then I should see activated successfull.


  Scenario:  Deactivating Activating a admin (Declarative)]
    When I have deactivating admin in with email "admin.active@gmail.com"
    Then I should see de-activated successfull.


  Scenario:  Activating a vendor (Declarative)]
    When I have activating vendor in with email "vendor.deactivr@gmail.com"
    Then I should see activated successfull.


  Scenario:  Deactivating a vendor (Declarative)]
    When I have deactivating vendor in with email "vendor.active@gmail.com"
    Then I should see de-activated successfull.

  Scenario:  Deactivating a service (Declarative)]
    When I have deactivating vendor in with email "vendor.active@gmail.com"
    Then I should see de-activated successfull.

  Scenario:  Activating a service (Declarative)]
    When I have deactivating vendor in with email "vendor.active@gmail.com"
    Then I should see de-activated successfull.

  Scenario:  Deactivating a category (Declarative)]
    When I have deactivating vendor in with email "vendor.active@gmail.com"
    Then I should see de-activated successfull.

  Scenario:  Activating a category (Declarative)]
    When I have deactivating vendor in with email "vendor.active@gmail.com"
    Then I should see de-activated successfull.


  Scenario:  Accepting a service (Declarative)]
    When I have deactivating vendor in with email "vendor.active@gmail.com"
    Then I should see de-activated successfull.

  Scenario:  Rejecting a service (Declarative)]
    When I have deactivating vendor in with email "vendor.active@gmail.com"
    Then I should see de-activated successfull.

  Scenario:  Accepting a vendor request (Declarative)]
    When I have deactivating vendor in with email "vendor.active@gmail.com"
    Then I should see de-activated successfull.

  Scenario:  Rejecting a category (Declarative)]
    When I have deactivating vendor in with email "vendor.active@gmail.com"
    Then I should see de-activated successfull.

  Scenario:  Adding a category (Declarative)]
    When I have deactivating vendor in with email "vendor.active@gmail.com"
    Then I should see de-activated successfull.

#    successsignup
#    missing Emailid
#    invallid password
#    unmatched password
#    exixtingemail