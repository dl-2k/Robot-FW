*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetAllLinks
    Open Browser    https://demoqa.com/    chrome
    Maximize Browser Window
    ${AllLinks}  Get Element Count    xpath=//a
    Log To Console   ${AllLinks}
    Close Browser