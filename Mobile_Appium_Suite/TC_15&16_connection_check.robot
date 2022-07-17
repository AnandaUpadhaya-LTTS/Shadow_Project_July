*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource

*** Test Cases ***

TC1: 4G_LTE_connection_IPv4
    Test IPv4 In Browser
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots

TC2: 4G_LTE_connection_IPv6
    Test IPv6 In Browser
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots
