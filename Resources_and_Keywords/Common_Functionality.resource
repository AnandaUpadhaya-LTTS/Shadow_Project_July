*** Settings ***
Documentation       This file handles app configuration, reuseable scripts,etc.
Library     DateTime
Library     SeleniumLibrary
Library     AppiumLibrary


*** Variables ***

${HOST_NAME}     http://localhost:4723/wd/hub
${device_Name}    US699DH6YSYHVGJ7
${app_Package}    com.android.chrome
${app_Activity}   com.google.android.apps.chrome.Main


*** Keywords ***

Launch Chrome Browser

        Open Application    ${HOST_NAME}    platformName=Android     deviceName=${device_Name}     appPackage=${app_Package}     appActivity=${app_Activity}     noReset=${True}
        set selenium implicit wait      30s
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        AppiumLibrary.Click Element    id=menu_button
        AppiumLibrary.Click Element     id=new_tab_menu_id

Launch Messaging App

        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}    appPackage=com.google.android.apps.messaging   appActivity=com.google.android.apps.messaging.home.HomeActivity      noReset=${True}
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        set selenium implicit wait      30s

Airplane mode check
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}     noReset=${True}
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        set selenium implicit wait      30s

Launch Calculator App
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}     appPackage=com.coloros.calculator       appActivity=com.android.calculator2.Calculator     noReset=${True}
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        set selenium implicit wait      30s

Launch Contact App
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}     appPackage=com.google.android.contacts       appActivity=com.google.android.apps.contacts.activities.PeopleActivity     noReset=${True}
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        set selenium implicit wait      30s

Launch Settings App
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}     appPackage=com.android.settings       appActivity=com.oppo.settings.SettingsActivity     noReset=${True}
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        set selenium implicit wait      30s


Launch Call Management App
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}     appPackage=com.google.android.dialer       appActivity=com.android.dialer.main.impl.MainActivity   noReset=${True}      appWaitForLaunch=${False}
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        set selenium implicit wait      30s

LTE Check

        Launch Settings App
        set selenium implicit wait      30s
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        AppiumLibrary.Click Text    SIM card & mobile data
        Sleep    1s
        AppiumLibrary.Click Text    SIM2
        Sleep    1s
        AppiumLibrary.Click Text    Preferred network type
        Sleep    1s
        AppiumLibrary.Click Text    4G/3G/2G (Auto)
        Sleep    1s

WCDMA Check
        Launch Settings App
        set selenium implicit wait      30s
        Set Screenshot Directory    ${EXECDIR}${/}Screenshots
        AppiumLibrary.Click Text    SIM card & mobile data
        Sleep    1s
        AppiumLibrary.Click Text    SIM2
        Sleep    1s
        AppiumLibrary.Click Text    Preferred network type
        Sleep    1s
        AppiumLibrary.Click Text    3G/2G (Auto)
        Sleep    1s

Call Phone
        Launch Call Management App
        set selenium implicit wait      30s
        Sleep    1s
        AppiumLibrary.Click Element     id=dialpad_fab
        Sleep    1s
        AppiumLibrary.Input Value    id=digits    8011843630
        AppiumLibrary.Click Element    id=dialpad_voice_call_button
        Sleep    1s
        AppiumLibrary.Click Text    SIM1
        Sleep    1s

Send Message
        Launch Messaging App
        set selenium implicit wait      30s
        AppiumLibrary.Click Element    id=start_chat_fab
        Sleep    1s
        AppiumLibrary.Input Value    id=recipient_text_view    7002539096
        AppiumLibrary.press keycode           66
        AppiumLibrary.Click Element    id=send_message_button_icon
        AppiumLibrary.Click Text    SIM2
        AppiumLibrary.Input Text    id=compose_message_text    Hello_Ananda_Test_Case_Check
        AppiumLibrary.Click Element    id=send_message_button_icon
        Sleep    2s