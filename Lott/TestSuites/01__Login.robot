*** Settings ***
Documentation    Tests the Login and Landing Page
Test Setup    Base Mobile App Suite Setup
Test Teardown   Base Mobile Test Tear Down
Resource    Core/CommonResources/BaseTest.robot
Resource    Lott/Resources/StepDefinitions/BDDKeywords.robot

*** Test Cases ***
Test the enrolment process as a Bett3r only user skipping through onboading screens
    Given I am on Login page
    And I log into the App
    When I am on landing page
    Then I should be able to see lottery tiles