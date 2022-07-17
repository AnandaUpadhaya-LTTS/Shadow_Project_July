*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource

*** Variables ***

${Phone_no}     8011843630

*** Test Cases ***

TC1: Bidirectional Data Transfer on LTE connection

    Set Preferred network As LTE
    Call Phone      ${Phone_no}
    Launch Chrome Browser
    Sleep    2s
    AppiumLibrary.Input Text    id=search_box_text    speed test
    AppiumLibrary.press keycode           66
    Sleep    3s
    AppiumLibrary.Wait Until Page Contains    RUN SPEED TEST
    Sleep    5s
    AppiumLibrary.Close All Applications
