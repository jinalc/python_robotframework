*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/LoginBDD.robot

*** Test Cases ***
LoginTest with BDD implementation
    Given I login to application
    When I input username
    And I input password
    And I click on Login button
    Then I validate login page error message