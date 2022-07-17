*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource
Test Teardown       Close All Applications

*** Variables ***

${Phone_no}     8011843630

*** Test Cases ***

TC1: Call_check_on_LTE_connection

    Set Preferred network As LTE
    Call Phone      ${Phone_no}
    AppiumLibrary.Click Element    id=incall_end_call

TC2: Call_check_on_WCDMA_connection

    Set Preferred network As WCDMA
    Call Phone      ${Phone_no}
    AppiumLibrary.Click Element    id=incall_end_call