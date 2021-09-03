*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginResource.robot

*** Variables ***
${url}  https://admin-demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    loginToApplication
    close browser