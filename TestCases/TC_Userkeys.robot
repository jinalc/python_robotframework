*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginResource.robot

*** Variables ***
${url}  https://admin-demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
TC-Access
    ${page_title}=  launchBrowser  ${url}    ${browser}
    log to console  ${page_title}
    log  ${page_title}
    logintoapplication