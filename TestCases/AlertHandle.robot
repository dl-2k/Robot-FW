*** Settings ***
Library    SeleniumLibrary
Library    webdriver_manager

*** Variables ***
${BROWSER}    chrome
${URL}        https://testautomationpractice.blogspot.com/

*** Test Cases ***
Alert Handle
    [Documentation]    This test case opens the DemoQA website and verifies the title.
    [Tags]    smoke
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    #Set Selenium Speed    1
    Click Element    confirmBtn   # Click on the button to open the alert
    Handle Alert    action=ACCEPT
    Element Should Contain    id=demo    OK
    
    Click Element    confirmBtn   # Click on the button to open the alert
    Handle Alert    action=DISMISS
    Element Should Contain    id=demo    Cancel

    Close Browser

*** Keywords ***


