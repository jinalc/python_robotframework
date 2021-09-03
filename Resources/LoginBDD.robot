*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginResource.robot



*** Variables ***
${usebrowser}      chrome
${siteurl}          https://admin-demo.nopcommerce.com/
${user}     subratdas54@gmail.com
${pwd}      Ilovemom@18



*** Keywords ***
I login to application
    Open login Browser     ${siteurl}      ${usebrowser}

I input username
    Enter Username  ${user}
    sleep  3 seconds

I input password
    Enter Password  ${pwd}

I click on Login button
    Click SignIn
    sleep  3 seconds

I validate login page error message
    Validate Error Login Message
    close my browser