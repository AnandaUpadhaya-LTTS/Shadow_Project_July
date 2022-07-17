*** Settings ***

Resource        ../Resources_and_Keywords/Common_Functionality.resource
Library    AutoItLibrary

*** Test Cases ***

TC1:Download_link_check_LTE
    Set Preferred network As LTE
    # Keycode 3 will take you to the homepage
    Press Keycode    3
    Direct Test File Download Link

TC2:Download_link_check_WCDMA
    Set Preferred network As WCDMA
    # Keycode 3 will take you to the homepage
    Press Keycode    3
    Direct Test File Download Link