*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource

*** Variables ***

${Phone_no}     8011843630

*** Test Cases ***

TC1: Simultaneous_Data&Voice_Call_Check_on_LTE_connection

    Set Preferred network As LTE
    Call Phone      ${Phone_no}
    Run Speed Test in Browser
    AppiumLibrary.Close All Applications


TC2: Simultaneous_Data&Voice_Call_Check_on_WCDMA_connection

    Set Preferred network As WCDMA
    Call Phone      ${Phone_no}
    Run Speed Test in Browser
    AppiumLibrary.Close All Applications