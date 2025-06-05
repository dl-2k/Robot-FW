***Settings***
Library    SeleniumLibrary


***Variables***

${BROWSER}    chrome
${URL}        https://demoqa.com/radio-button


***Test Cases***
RedioButtonTest
    [Documentation]    This test case opens the DemoQA website and verifies the checkbox.
    [Tags]    smoke
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    #Wait Until Page Contains Element    id=yesRadio    timeout=10s
    Wait Until Element Is Visible    id=yesRadio    timeout=20s
    Click Element     id=yesRadio
    Element Should Be Visible    css=.text-success
    Element Text Should Be    css=.text-success    Yes
    Close Browser
    
#Another way to verify the radio button
# Select Radio Button    nameOfTheTag    valueOfTheTag
#Example: Select Radio Button    sex    female

#Handle dropdown list
#Select from list by value 
#Select From List By label    Audi

***Keywords***