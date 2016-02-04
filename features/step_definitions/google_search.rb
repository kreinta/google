
Given(/^that I have gone to "([^"]*)"$/) do |item|
visit(item)
end

When(/^I add "([^"]*)" to the search box$/) do |item|
fill_in 'q', with: item 
end

When(/^I hit Enter$/) do
find_field('q').native.send_key(:enter)
end

Then(/^"([^"]*)" should be mentioned in the results$/) do |item|
expect(page).to have_content(item)
end

