*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource
Library    AutoItLibrary

*** Variables ***

#${ARN}     IPv4
${ARN}     IPv6
#${ARN}     IPv4/IPv6

*** Test Cases ***

TC1: LTE_Test_HTTP: APN_IPv4_Or_IPv6_Or_Both
        set selenium implicit wait      10s
        Set ARN to IPv4 or IPv6 or Both     ${ARN}  #Change ARN value in the Variables Section according to requirements
        Press Keycode    3
        Run Speed Test in Browser

