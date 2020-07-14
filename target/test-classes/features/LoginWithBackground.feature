@loginWithBackground
Feature: Login feature
  CBT-25: As a user, I should be able to login with correct credentials
  to different accounts. And dashboard should be displayed.

  #BEFORE ANNOTATION
  Background:Backstory is that User is on the login page
    #BEFORESTEP
    Given User is on the login page
    #AFTERSTEP

  Scenario: Librarian login scenario
    #BEFORESTEP
    When User logs in as librarian
    #AFTERSTEP
    #BEFORESTEP
    Then User should see dashboard
    #AFTERSTEP
  #AFTER ANNOTATION RUNS HERE

  Scenario: Student login Scenario
    #BEFORESTEP
    When User logs in as student
    #AFTERSTEP
    #BEFORESTEP
    Then User should see dashboard
    #AFTERSTEP
  #AFTER ANNOTATION RUNS HERE

  @db
  Scenario: Admin login scenario
    #BEFORESTEP
    When User logs in as Admin
    #AFTERSTEP
    #BEFORESTEP
    Then User should see dashboard
    #AFTERSTEP
  #AFTER ANNOTATION RUNS HERE


