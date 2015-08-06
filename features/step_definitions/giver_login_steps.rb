Given /^there is no logged in user$/ do 
end

Given /^user visits (.*)$/ do |dest|
  visit StepHelpers.destination[dest]
end

Then /^(.*) is displayed$/ do |elt|
  assert find(StepHelpers.css_matchers[elt]).visible?
end

When /^user clicks (.*)$/ do |content|
  click_link(StepHelpers.content_matchers[content])
end

Then /^(.*) page is loaded$/ do |dest|
  assert page.current_url.include? StepHelpers.destination[dest] 
end

Given /^(.*) field is completed$/ do |field|
  if !field.include? 'password' then
    assert StepHelpers.validate_input find(".#{field}-field")
  else
    assert StepHelpers.validate_password find(".#{field}-field")
  end
end

Given(/^a logged in user$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^logged in user has no values data$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^the logged in user visits any page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the user is prompted to take the values survey$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^a new user object is created$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^the user clicks the Sign In button$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^all fields are validated$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^a user account with the given email exists$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^the password matches the password for the user account$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the logged in user is set to the given user account$/) do
  pending # express the regexp above with the code you wish you had
end

