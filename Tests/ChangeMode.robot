*** Settings ***
Resource    ../Resources/Settings.robot
Test Setup    Open Browser and Maximize Window
Test Teardown    Close Browser
*** Test Cases ***
Change UI Mode
    Login with Credential    ${VALID_EMAIL}    ${PASSWORD}
    Dashboard Should Be Open
    Switch to DarkMode
    Switch to LightMode
    Click Logout
    Login Page Should Be Open
