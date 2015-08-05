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

Then /^(.*) is loaded$/ do |dest|
  assert page.current_url.include? '/new_account.html'
end

Given /^(.*) field is completed$/ do |field|
  if !field.include? 'password' then
    assert StepHelpers.validate_input find(".#{field}-field")
  else
    assert StepHelpers.validate_password find(".#{field}-field")
  end
end
