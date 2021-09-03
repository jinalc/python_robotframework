*** Settings ***

Suite Setup  log to console     Opening Browser
Suite Teardown  log to console      Closing Browser

Test Setup  log to console      Login to Application
Test Teardown  log to console       Logout From Application


*** Test Cases ***
TC-1 Get Info
    log to console  Get information
TC-2 Get Details
    log to console  Get All Details
TC-3 Find Details
    log to console      Find All Details
