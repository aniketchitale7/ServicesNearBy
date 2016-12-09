#
Given /^I am on the ServicesNearby Home Page$/ do
  visit welcome_index_path
end

When /^I click on the Menu button/ do
  visit welcome_index_path
  page.find('[@id=menu]').click
end\

Then /^I should see the menu/ do
   expect(page).to have_content("ServicesNearBy")
end

When /^I click on My Profile Link/ do
  visit welcome_index_path
  page.find('[@id=menu]').click

  visit myprofile_index_path
end\

Then /^I should see the profile of user/ do
  expect(page).to have_content("user.active@gmail.com")
end

When /^I click on Edit/ do
  visit myprofile_index_path
  page.find('[@id=profileeditbtn]').click
end\

Then /^I should see Home Page/ do
  expect(page).to have_content("ServicesNearBy")
end






