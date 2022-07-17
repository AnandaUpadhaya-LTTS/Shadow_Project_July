*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource

Test Teardown   Close Application

*** Variables ***

${Phone_no}     7002539096

*** Test Cases ***

TC1: SMS_check_on_LTE_connection
    Set Preferred network As LTE
    Send Message    ${Phone_no}
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots

TC2: SMS_check_on_WCDMA_connection

    Set Preferred network As WCDMA
    Send Message     ${Phone_no}
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots