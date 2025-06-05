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
    Execute Javascript    window.scrollBy(0,200)

    Go To   https://demoqa.com/select-menu
    Scroll Element Into View    xpath=//option[text()='Audi']
    Select From List By Value    id=cars    audi

    #Scroll to end of database
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)