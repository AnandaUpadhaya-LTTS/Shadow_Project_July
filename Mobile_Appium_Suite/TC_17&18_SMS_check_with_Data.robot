*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource

Test Teardown   Close Application

*** Test Cases ***

TC1: SMS_check_on_LTE_connection

    LTE Check
    Send Message
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots

TC2: SMS_check_on_WCDMA_connection

    WCDMA Check
    Send Message
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots