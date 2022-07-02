*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource
Test Teardown   Close Application
Test Setup      Launch Contact App

*** Test Cases ***

TC:Add_Contact_Automation

    Sleep    1s
    AppiumLibrary.Click Element    id=floating_action_button
    Sleep    1s
    AppiumLibrary.Input Text    Text=First name    Ananda
    Sleep    5s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots