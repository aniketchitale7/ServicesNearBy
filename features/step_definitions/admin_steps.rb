
Given /^I am on the ServicesNearby admin page$/ do
  visit admin_index_path
end

When /^I have logged in with email "(.*?)" and password "(.*?)"$/ do |emailid, passwords|
  visit new_user_session_path
  fill_in "Email", :with => emailid
  fill_in "Password", :with => passwords
  click_button 'Log in'
end

Then(/^I should see Signed in successfully\.$/) do
  #Signed in successfully
  expect(page).to have_content("Signed in successfully")
  #request.request_uri.should == send(welcome_index_path)
  #assert page.current_path == welcome_index_path
end

Then(/^I should see Invalid Email or password\.$/) do
  #Signed in successfully
  expect(page).to have_content("Invalid Email or password")
  #request.request_uri.should == send(welcome_index_path)
  #assert page.current_path == welcome_index_path
end


