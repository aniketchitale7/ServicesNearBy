
Given /^I am on the ServicesNearby admin page$/ do
  visit admin_index_path
end

When /^I have deactivating user in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id=userdeactive]').click
end\


When /^I have activating user in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id=useractive]').click
end\

When /^I have deactivating admin in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id=admindeactive]').click
end\


When /^I have activating admin in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id=adminactive]').click
end\


When /^I have deactivating vendor in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id=vendordeactive]').click
end\


When /^I have activating vendor in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id=vendoractive]').click
end\




Then(/^I should see activated successfull\.$/) do
  #Signed in successfully
  expect(page).to have_content("Users")
end


Then(/^I should see de-activated successfull\.$/) do
  #Signed in successfully
  expect(page).to have_content("Users")
end



