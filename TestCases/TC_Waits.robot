*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginResource.robot

*** Variables ***
${usebrowser}      chrome
${siteurl}          https://admin-demo.nopcommerce.com/
${user}     subratdas54@gmail.com
${pwd}      Ilovemom@18


*** Test Cases ***
LoginTest
    Open login Browser     ${siteurl}      ${usebrowser}
    Enter Username  ${user}
    sleep  3 seconds
    Enter Password  ${pwd}
    Click SignIn
    sleep  3 seconds
    Validate Error Login Message
    close my browser