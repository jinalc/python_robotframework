*** Settings ***
Library  SeleniumLibrary
Variables  ../page_objects/locators.py



*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/
${BROSWER}      chrome



*** Keywords ***
Open login Browser
    [Arguments]     ${siteurl}      ${usebrowser}
    open browser    ${siteurl}  ${usebrowser}
    Maximize Browser Window

Enter Username
    [Arguments]  ${username}
    Input Text  ${login_name}   ${username}

Enter Password
    [Arguments]  ${password}
    Input Text  ${passwd}  ${password}

Click SignIn
    click button    ${login_btn}

Verify Successful Login
    title should be Dashboard

Validate Error Login Message
    page should contain     Login was unsuccessful

close my browser
    close all browsers

launchBrowser
   [Arguments]     ${appurl}   ${app}
   open browser    ${url}   ${browser}
   maximize browser window
   ${title}=   get title
   [Return]  ${title}

logintoapplication
    input text  id:Email        subrat@gmail.com
    input text  id:Password     pa123
    click element   xpath://button[@class='button-1 login-button']

Open my Browser
    open browser    ${LOGIN URL}    ${BROSWER}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to ${LOGIN URL}

Input username
    [Arguments]     ${username}
    Input text  id:Email    ${username}

Input pwd
    [Arguments]     ${password}
    Input text  id:Password    ${password}

Click LoginButton
    click element   xpath://button[@class='button-1 login-button']

Click LogOut Button
    click link      Logout

Validate Error Message
    page should contain     Login was unsuccessful

Validate Success Message
    page should contain     Dashboard
