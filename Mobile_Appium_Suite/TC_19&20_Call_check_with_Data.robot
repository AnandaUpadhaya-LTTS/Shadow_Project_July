*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource
Test Teardown       Close All Applications

*** Test Cases ***

TC1: Call_check_on_LTE_connection

    LTE Check
    Call Phone
    AppiumLibrary.Click Element    id=incall_end_call

TC2: Call_check_on_WCDMA_connection

    WCDMA Check
    Call Phone
    AppiumLibrary.Click Element    id=incall_end_call