*** Settings ***

Library    SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]    ${appURL}    ${appBrowser}
    Open Browser    ${appURL}    ${appBrowser}
    Maximize Browser Window
    ${title}=    Get Title
    RETURN    ${title}

