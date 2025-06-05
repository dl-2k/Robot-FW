*** Settings ***
Library    SeleniumLibrary
Library    webdriver_manager

*** Variables ***
${BROWSER}    chrome
${URL}        https://demoqa.com/buttons

*** Test Cases ***
Alert Handle
    [Documentation]    This test case opens the DemoQA website and verifies the title.
    [Tags]    smoke
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    #Set Selenium Speed    1

    #Double Click
    Double Click Element    id=doubleClickBtn
    Element Should Be Visible    id=doubleClickMessage
    
    #Right Click
    Open Context Menu    id=rightClickBtn
    Element Should Be Visible    id=rightClickMessage

    #Click
    Click Element    xpath=//button[text()='Click Me']
    Element Should Be Visible    id=dynamicClickMessage

    #Drag and Drop
    Go To    https://demoqa.com/droppable
    Drag And Drop    id=draggable    id=droppable
    Element Should Contain    id=droppable    Dropped!

    
    Close Browser

*** Keywords ***

