*** Settings ***
Library    SeleniumLibrary
Library    webdriver_manager

*** Test Cases ***
GetAllLinks
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Scroll Element Into View    xpath=//table[@name='BookTable']
    Table Column Should Contain    xpath=//table[@name='BookTable']    2    Amod
    Table Row Should Contain    xpath=//table[@name='BookTable']    3    Java
    Table Header Should Contain    xpath=//table[@name='BookTable']    Author
    Table Should Contain    xpath=//table[@name='BookTable']    Animesh
    Table Cell Should Contain    xpath=//table[@name='BookTable']    4    2    Animesh
    Close Browser