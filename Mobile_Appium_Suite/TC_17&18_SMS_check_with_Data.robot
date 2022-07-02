*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource

*** Test Cases ***

TC1: SMS_check_on_LTE_connection

    Launch Settings App
    AppiumLibrary.Click Text    SIM card & mobile data
    AppiumLibrary.Click Text    SIM2
    AppiumLibrary.Click Text    Preferred network type
    AppiumLibrary.Click Text    4G/3G/2G (Auto)
    Launch Messaging App
    AppiumLibrary.Click Element    id=start_chat_fab
    Sleep    1s
    AppiumLibrary.Input Value    id=recipient_text_view    8721913770
    AppiumLibrary.press keycode           66
    AppiumLibrary.Click Element    id=send_message_button_icon
    AppiumLibrary.Click Text    SIM2
    AppiumLibrary.Input Text    id=compose_message_text    Hello_Anup_Test_Case_Check
    AppiumLibrary.Click Element    id=send_message_button_icon
    Sleep    2s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots

TC1: SMS_check_on_WCDMA_connection

    Launch Settings App
    AppiumLibrary.Click Text    SIM card & mobile data
    AppiumLibrary.Click Text    SIM2
    AppiumLibrary.Click Text    Preferred network type
    AppiumLibrary.Click Text    3G/2G (Auto)
    Launch Messaging App
    AppiumLibrary.Click Element    id=start_chat_fab
    Sleep    1s
    AppiumLibrary.Input Value    id=recipient_text_view    8721913770
    AppiumLibrary.press keycode           66
    AppiumLibrary.Click Element    id=send_message_button_icon
    AppiumLibrary.Click Text    SIM2
    AppiumLibrary.Input Text    id=compose_message_text    Hello_Anup_Test_Case_Check
    AppiumLibrary.Click Element    id=send_message_button_icon
    Sleep    2s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots