*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource
Test Teardown   Close Application
Test Setup      Launch Messaging App


*** Test Cases ***

TC:Text_Msg_Automation

    AppiumLibrary.Click Element    id=start_chat_fab
    Sleep    1s
    AppiumLibrary.Input Value    id=recipient_text_view    8721913770
    AppiumLibrary.press keycode           66
    AppiumLibrary.Input Text    id=compose_message_text    Hello_Anup
    AppiumLibrary.Click Element    id=send_message_button_icon
    Sleep    2s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots