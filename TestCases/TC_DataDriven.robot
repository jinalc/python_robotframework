*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginResource.robot
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template  Invalid login

*** Test Cases ***                      username                password
DDT-TC-1-CorrectUser-EmptyPassword      subratdas54@gmail.com   ${EMPTY}
DDT-TC-2-CorrectUser-wrongPassword      subratdas54@gmail.com   pas
DDT-TC-3-WrongUser-CorrectPassword      subratdas@gmail.com     admin
DDT-TC-4-WrongUser-EmptyPassword        subratdas@gmail.com     ${EMPTY}
DDT-TC-5-WrongUser-wrongPassword        subratdas@gmail.com     pas

*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input pwd  ${password}
    Click LoginButton
    Validate Error Message