*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource
Test Teardown       Close All Applications

*** Test Cases ***

TC1: Simultaneous_Data&Voice_Call_Check_on_LTE_connection

    Launch Settings App
    AppiumLibrary.Click Text    SIM card & mobile data
    AppiumLibrary.Click Text    SIM2
    AppiumLibrary.Click Text    Preferred network type
    AppiumLibrary.Click Text    4G/3G/2G (Auto)
    Launch Call Management App
    Sleep    1s
    AppiumLibrary.Click Element     id=dialpad_fab
    Sleep    1s
    AppiumLibrary.Input Value    id=digits    8011843630
    AppiumLibrary.Click Element    id=dialpad_voice_call_button
    Sleep    1s
    AppiumLibrary.Click Text    SIM1
    Sleep    1s
    Launch Chrome Browser
    Sleep    2s
    AppiumLibrary.Input Text    id=search_box_text    speed test
    AppiumLibrary.press keycode           66
    Sleep    3s
    AppiumLibrary.Wait Until Page Contains    RUN SPEED TEST
    Sleep    5s


TC1: Simultaneous_Data&Voice_Call_Check_on_WCDMA_connection

    Launch Settings App
    AppiumLibrary.Click Text    SIM card & mobile data
    AppiumLibrary.Click Text    SIM2
    AppiumLibrary.Click Text    Preferred network type
    AppiumLibrary.Click Text    3G/2G (Auto)
    Launch Call Management App
    Sleep    1s
    AppiumLibrary.Click Element     id=dialpad_fab
    Sleep    1s
    AppiumLibrary.Input Value    id=digits    8011843630
    AppiumLibrary.Click Element    id=dialpad_voice_call_button
    Sleep    1s
    AppiumLibrary.Click Text    SIM1
    Sleep    1s
    Launch Chrome Browser
    Sleep    2s
    AppiumLibrary.Input Text    id=search_box_text    speed test
    AppiumLibrary.press keycode           66
    Sleep    3s
    AppiumLibrary.Wait Until Page Contains    RUN SPEED TEST
    Sleep    5s