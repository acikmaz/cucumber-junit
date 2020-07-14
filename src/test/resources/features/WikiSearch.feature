@wiki
Feature: Wiki title and search verification

  Background: User is on the Wiki homepage
    Given User is on the Wikipedia homepage


  Scenario: Search functionality title verification
    When User searches "Steve Jobs" in the Wiki search page
    Then User should see "Steve Jobs" in the wiki title

  Scenario: Search functionality header verification
    When User searches "Steve Jobs" in the Wiki search page
    Then User should see "Steve Jobs" in the main header

#  Scenario: Search functionality header verification
#    When User searches "Steve Jobs" in the Wiki 1 search page
#    Then User should see "Steve Jobs" in the main header