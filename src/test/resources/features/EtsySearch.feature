@etsyAll
Feature: Etsy search feature
  Agile story: User should be able to enter search terms and see
  relevant results in the page and in the title.

  Background: User is on the Etsy homepage
    Given User is on the Etsy homepage


  Scenario: Title verification
    Then User should see the title as expected
    #expected title : Etsy -Shop for handmade, vintage, custom, and unique gifts for everyone

  @etsyWip
  Scenario: Title verification after search term
    When User searches "wooden spoon" in the search box
    And User clicks to search button
    Then User should see "Wooden spoon" in the Etsy title