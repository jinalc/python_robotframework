*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Library  DataDriver ../TestData/logindata.csv  sheet_name=Sheet1
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template  Invalid Login


*** Test Cases ***
LoginTestWithExcel using ${username} ${password}


*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    Input username      ${username}
    Input pwd       ${password}
    Click LoginButton
    Validate Error Message