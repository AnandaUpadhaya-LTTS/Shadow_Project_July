*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource

*** Test Cases ***

TC1: 4G_LTE_connection_IPv4
    AppiumLibrary.Click Element    id=menu_button
    AppiumLibrary.Click Element     id=new_tab_menu_id
    AppiumLibrary.Input Text    id=search_box_text    https://test-ipv6.com/
    AppiumLibrary.press keycode           66
    AppiumLibrary.Wait Until Page Contains    Your IPv4 address on the public Internet appears to be     timeout=5s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots

TC2: 4G_LTE_connection_IPv6
    AppiumLibrary.Click Element    id=menu_button
    AppiumLibrary.Click Element     id=new_tab_menu_id
    AppiumLibrary.Input Text    id=search_box_text    https://test-ipv6.com/
    AppiumLibrary.press keycode           66
    AppiumLibrary.Wait Until Page Contains    Your IPv6 address on the public Internet appears to be     timeout=5s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots
