*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource

*** Test Cases ***

TC1: Simultaneous_Data&Voice_Call_Check_on_LTE_connection

    LTE Check
    Call Phone
    Launch Chrome Browser
    Sleep    2s
    AppiumLibrary.Input Text    id=search_box_text    speed test
    AppiumLibrary.press keycode           66
    Sleep    3s
    AppiumLibrary.Wait Until Page Contains    RUN SPEED TEST
    Sleep    5s
    AppiumLibrary.Close All Applications


TC2: Simultaneous_Data&Voice_Call_Check_on_WCDMA_connection

    WCDMA Check
    Call Phone
    Launch Chrome Browser
    Sleep    2s
    AppiumLibrary.Input Text    id=search_box_text    speed test
    AppiumLibrary.press keycode           66
    Sleep    3s
    AppiumLibrary.Wait Until Page Contains    RUN SPEED TEST
    Sleep    5s
    AppiumLibrary.Close All Applications