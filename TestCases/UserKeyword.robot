*** Settings ***

Library    SeleniumLibrary
Library    webdriver_manager

Resource    ../Resources/resources.robot

*** Variables ***
${BROWSER}    chrome
${URL}        https://demoqa.com/login

*** Test Cases ***
TestCase1
    ${pageTitle}    launchBrowser    ${URL}    ${BROWSER}
    Input Text    id=userName    TrungLe
    Input Text    id=password    Trung1999@
    

