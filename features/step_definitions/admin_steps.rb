
Given /^I am on the ServicesNearby admin page$/ do
  visit admin_index_path
end

When /^I have deactivating user in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id="userdeactive_user.active@gmail.com"]').click
end\


When /^I have activating user in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id="useractive_user.inactive@gmail.com"]').click
end\

When /^I have deactivating admin in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id="admindeactive_admin.active@gmail.com"]').click
end\


When /^I have activating admin in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id="adminactive_admin.inactive@gmail.com"]').click
end\


When /^I have deactivating vendor in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id="vendordeactive_vendor.active@gmail.com"]').click
end\


When /^I have activating vendor in with email "(.*?)"$/ do |emailid|
  visit admin_index_path
  page.find('[@id="vendoractive_vendor.inactive@gmail.com"]').click
end\




Then(/^I should see activated successfull\.$/) do
  #Signed in successfully
  expect(page).to have_content("Users")
end


Then(/^I should see de-activated successfull\.$/) do
  #Signed in successfully
  expect(page).to have_content("Users")
end



