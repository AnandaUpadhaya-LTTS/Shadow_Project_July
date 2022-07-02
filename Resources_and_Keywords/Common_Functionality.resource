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
        AppiumLibrary.Capture Page Screenshot

Launch Messaging App

        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}    appPackage=com.google.android.apps.messaging   appActivity=com.google.android.apps.messaging.home.HomeActivity      noReset=${True}
        AppiumLibrary.Capture Page Screenshot

Airplane mode check
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}     noReset=${True}
        AppiumLibrary.Capture Page Screenshot

Launch Calculator App
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}     appPackage=com.coloros.calculator       appActivity=com.android.calculator2.Calculator     noReset=${True}
        AppiumLibrary.Capture Page Screenshot

Launch Contact App
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}     appPackage=com.google.android.contacts       appActivity=com.google.android.apps.contacts.activities.PeopleActivity     noReset=${True}
        AppiumLibrary.Capture Page Screenshot

Launch Settings App
        Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=${device_Name}     appPackage=com.android.settings       appActivity=com.oppo.settings.SettingsActivity     noReset=${True}
        AppiumLibrary.Capture Page Screenshot
