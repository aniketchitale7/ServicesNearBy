
Given /^I am on the ServicesNearby login page$/ do
  visit users_sign_in_path
end

When /^I have logged in with email "(.*?)" and password "(.*?)"$/ do |email, password|
  pending
  # visit users_sign_in_path
  # fill_in email, :with => email
  # fill _in password, :with => password
  # click_button 'Log in'
end

Then /^I should see$/ do

end
