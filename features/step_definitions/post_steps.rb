# MOD KIMADA 3/26/2013
Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
	page.body.should =~ /#{e1}.*#{e2}/m
end

When /^I follow "([^"]*)" for "([^"]*)"$/ do |link, x|
  # Use capybara to find row based on 'person' text... no need for the additional 'find'
  # the '.,' sets the scope to the current node, that is the tr in question
  within(:xpath, "//tr[contains(.,'#{x}')]") do
    click_link(link)
  end
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

# https://gist.github.com/jeffrafter/51141
When /^I select "(.*)" as the "(.*)" date$/ do |date, date_label|
  select_date(date, :from => date_label)
end