Feature: Google Search

When I go to the Google search page, and search for an item, I expect to see some reference to that item in the result summary

Scenario:
Given that I have gone to "http://www.google.com"
When I add "cats" to the search box
And I hit Enter
Then "cat" should be mentioned in the results


